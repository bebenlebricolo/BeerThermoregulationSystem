#include <string.h>
#include <Arduino.h>
#include "maths.h"

// #########################################################################
// ########################## PIN mapping ##################################
// #########################################################################
// Input signals
#define DUTY_CYCLE_POT_PIN  (A0) // ADC7
#define POLARITY_SWITCH_PIN (11) // PB7
#define RESET_SWITCH_PIN    (12) // PD6

// Output signals
#define HIP_HEN_PWM_PIN     (13) // OC4A -> Fast PWM 10 bits timer (timer4) or atmega32u4
#define FAN_TRIGGER         (6)  // PD7
#define HIP_DIS_PIN         (7)  // PE6
#define IN_POS_PIN          (8)  // PB4
#define IN_NEG_PIN          (9)  // PB5

// #########################################################################
// ########################## Pot constants ################################
// #########################################################################

#define POT_LOW_THRESHOLD (200U)    // When pot signal goes under this threshold, output PWM is set to low state
#define POT_HIGH_THRESHOLD (800U)   // When pot signal goes above this threshold, output PWM is always set to high state
#define TIMER4_TOP_VALUE (63U)      // PWM will span from 0 - 63 with a prescaler of 1 ; generating a PWM frequency of 1MHz with 16 th steps (0 = 0%, 15 = 100%)
#define POT_MAPPED_RANGE_MAX (TIMER4_TOP_VALUE)   // POT is mapped between 0 and 63


// Potentiometer mapping constants
static constexpr map_ranges_t POT_INPUT_RANGE = {.start = POT_LOW_THRESHOLD, .end = POT_HIGH_THRESHOLD};
static constexpr uint16_t POT_INPUT_RANGE_SPAN = (POT_HIGH_THRESHOLD - POT_LOW_THRESHOLD);
static constexpr map_ranges_t POT_OUTPUT_RANGE = {.start = 0, .end = POT_MAPPED_RANGE_MAX};  // Output range is directly expressed as TIMER4 output compare value (OCR4A)
static constexpr uint16_t POT_OUTPUT_RANGE_SPAN = POT_MAPPED_RANGE_MAX;

// Minimum potentiometer value difference threshold used to
// detect a new "potentiometer event".
// As we don't want to update the output PWM constantly, we need to implement a small hysteresis
static constexpr uint16_t POT_MIN_DIFF_THRESHOLD = 5U; // Threshold expressed in the output pot range (matches TIMER4 OCR4A value)
static uint16_t last_pot_value = 0; /**< Last mapped potentiometer value, 0 to OCR4A */

// #########################################################################
// ########################## Static functions #############################
// #########################################################################

/**
 * @brief maps the potentiometer value from 0% to 100% within the evaluated range
 * Pot value has to be within the range defined by both POT high and low values
*/
static inline uint16_t map_pot(uint16_t potval);
static inline void stop_timer4(void);
static inline void start_timer4(void);
static inline void waste_cycles(uint32_t cycles);
static inline uint16_t abs_difference(uint16_t const * const val1, uint16_t const * const val2 );

void setup() {
  // put your setup code here, to run once:
  pinMode(DUTY_CYCLE_POT_PIN, INPUT);

  // Reset pin will take down all outputs at once
  pinMode(RESET_SWITCH_PIN, INPUT_PULLUP);
  pinMode(POLARITY_SWITCH_PIN, INPUT_PULLUP);

  // Output pins
  pinMode(HIP_HEN_PWM_PIN, OUTPUT);  // OC4A -> Will generate a PWM which goes to HEN pin of HIP4080A driver
  DDRC |= (1 << PC7);
  PORTC &= ~(1 << PC7); // No pullup on PC7
  pinMode(HIP_DIS_PIN, OUTPUT);      // PE6 -> Actively disables the HUP4080a driver (disables at "high" state)
  pinMode(FAN_TRIGGER, OUTPUT);      // PD7 -> Controls power board cooling fans
  pinMode(IN_POS_PIN, OUTPUT);       // PB4 -> Used as IN+ port of HIP4080A driver
  pinMode(IN_NEG_PIN, OUTPUT);       // PB5 -> Used as IN- port of HIP4080A driver
  // Default values for output ports ; disables everything before starting
  digitalWrite(HIP_DIS_PIN, 1U);
  digitalWrite(FAN_TRIGGER, 0U);
  digitalWrite(IN_POS_PIN, 0U);
  digitalWrite(IN_NEG_PIN, 0U);

  Serial.begin(9600);

  // Configure PLL
  PLLCSR = (1 << PINDIV) | (1 << PLLE); // Enable PLL and use a prescaller of 2 as our input oscillator clocks at 16 MHZ
  PLLFRQ = (1 << PLLTM1) | (1 << PDIV3) | (1 << PDIV1); // PLL set at maximum speed (96MHz) and divided by 1.5 to reach 64MHz (maximum clock input for Timer 4)

  // Wait for PLL to settle
  // Each clock cycle is 63ns.
  // Wait for 100 ms (100 000µs, 100 000 000 ns)
  // 100,000,000 / 315 = 317,460 iterations
  waste_cycles(317460UL);

  while ((PLLCSR & (1 << PLOCK)) == 0)
  {
    // Wait for PLL to lock
  }

  Serial.println("Configuring timer 4");

  // Setup Timer4 with PLL and
  TCCR4A = (1 << COM4A1); // COM4A1 set : OC4A pin connected (Cleared on compare match)
  TCCR4B = (1 << CS40); // Prescaler is equal to 1 ; timer will go at full speed
  TCCR4D = 0;
  //TCCR4D &= ~((1 << WGM41) | (1 << WGM40)); // Fast PWM mode
  TCNT4 = 0;
  TC4H = 0;
  OCR4A = 0;   // Output compare is set to 0, so that output is always low even if timer is running
  OCR4C = 63U; // Gives a PWM at 1MHz with 64 resolution steps for timer4
}

static char msg[10U] = {0};

void loop() {
  // put your main code here, to run repeatedly:
  int pot = analogRead(DUTY_CYCLE_POT_PIN);

  bool rst_switch_on = (bool) digitalRead(RESET_SWITCH_PIN);
  bool pol_switch_on = (bool) digitalRead(POLARITY_SWITCH_PIN);

  // Check if a reset is ongoing
  if (!rst_switch_on)
  {
    digitalWrite(HIP_DIS_PIN, 0U);  // Re-enables hip driver
    digitalWrite(FAN_TRIGGER, 1U);  // Activate cooling fans all at once

    // Check polarity to know if we are cooling or heating
    if (pol_switch_on)
    {
      digitalWrite(IN_POS_PIN, 1U);
      digitalWrite(IN_NEG_PIN, 0U);
    }
    else
    {
      digitalWrite(IN_POS_PIN, 0U);
      digitalWrite(IN_NEG_PIN, 1U);
    }

    // Handle PWM setup
    if (pot < (int) POT_LOW_THRESHOLD)
    {
      stop_timer4();
      digitalWrite(HIP_HEN_PWM_PIN, LOW); // Disables HIP4080a driver
      digitalWrite(HIP_DIS_PIN, 1U);
    }
    else if (pot > (int) POT_HIGH_THRESHOLD)
    {
      stop_timer4();
      digitalWrite(HIP_HEN_PWM_PIN, HIGH); // overrides PWM
    }
    else
    {
      uint16_t mapped_pot_value = map_pot(uint16_t(pot));
      sprintf(msg, "Pot val : %d", mapped_pot_value);
      Serial.println(msg);

      // Only update timer's output frequency if potentiometer reading varied in a meaningfull way
      if (abs_difference(&last_pot_value, &mapped_pot_value) >= POT_MIN_DIFF_THRESHOLD)
      {
        // Program Timer4 to generate PWM with the right frequency
        start_timer4(); // no effect is timer is already started
        OCR4A = (uint8_t) mapped_pot_value;
      }
    }

  }
  else  // Reset switch is activated ( disabling everything )
  {
    // Disable both outputs
    digitalWrite(IN_POS_PIN, 0U);
    digitalWrite(IN_NEG_PIN, 0U);

    // Actively disables HIP driver
    digitalWrite(HIP_DIS_PIN, 1U);
  }
}



/**
 * @brief maps the potentiometer value from 0% to 100% within the evaluated range
 * Pot value has to be within the range defined by both POT high and low values
*/
static inline uint16_t map_pot(uint16_t potval)
{
  uint16_t mapped = linear_remap(potval, &POT_INPUT_RANGE, &POT_OUTPUT_RANGE);
  return mapped;
}

static inline void stop_timer4(void)
{
  TCCR4A &= ~(1 << PWM4A); // Clear PWM4A enabled bit
}

static inline void start_timer4(void)
{
  TCCR4A |= (1 << PWM4A); // Re-enables timer 4 PWM on pin A
}

static inline void waste_cycles(uint32_t cycles)
{
  // With O1 optimizations, gives the assembly :
  // .L2:
  //       NOP
  // adiw r24,1
  //       cpi r24,-24  -> 1 cycle
  //       ldi r18,3    -> 1 cycle
  //       cpc r25,r18  -> 1 cycle
  //       brne .L2   -> brne takes 2 cycle if r24 is not 0 ; 1 cycle if it is
  // For n iterations, it means we roughly consume (2*n + 1*n + 1*n + 1*n) cycles -> 5*n cycles.
  // So the time relation is : 5*63ns/iteration = 315ns/iterations
  for (uint32_t i = 0 ; i < cycles ; i++ )
  {
    asm("NOP"); // Do nothing operation
  }
}

static inline uint16_t abs_difference(uint16_t const * const val1, uint16_t const * const val2 )
{
  uint16_t out = 0;
  if( *val1 > *val2)
  {
    out = *val1 - *val2;
  }
  else
  {
    out = *val2 - *val1;
  }
  return out;
}