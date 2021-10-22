#include <Arduino.h>
#include "maths.h"

#define DUTY_CYCLE_POT_PIN  (A0) // ADC7
#define RESET_SWITCH_PIN    (12) // PD6
#define POLARITY_SWITCH_PIN (13) // PC7
#define HEN_PWM_PIN         (5)  // OC4A -> Fast PWM 10 bits timer (timer4) or atmega32u4
#define IN_POS_PIN          (8)  // PB4
#define IN_NEG_PIN          (9)  // PB5

#define POT_LOW_THRESHOLD (200U)    // When pot signal goes under this threshold, output PWM is set to low state
#define POT_HIGH_THRESHOLD (800U)   // When pot signal goes above this threshold, output PWM is always set to high state
#define POT_MAPPED_RANGE_MAX (15)   // PWM will span from 0 - 15 with a prescaler of 1 ; generating a PWM frequency of 1MHz with 16 th steps (0 = 0%, 15 = 100%)

// Potentiometer mapping constants
static constexpr map_ranges_t POT_INPUT_RANGE = {.start = POT_LOW_THRESHOLD, .end = POT_HIGH_THRESHOLD};
static constexpr uint16_t POT_INPUT_RANGE_SPAN = (POT_HIGH_THRESHOLD - POT_LOW_THRESHOLD);
static constexpr map_ranges_t POT_OUTPUT_RANGE = {.start = POT_LOW_THRESHOLD, .end = POT_HIGH_THRESHOLD};
static constexpr uint16_t POT_OUTPUT_RANGE_SPAN = (POT_MAPPED_RANGE_MAX);

/**
 * @brief maps the potentiometer value from 0% to 100% within the evaluated range
 * Pot value has to be within the range defined by both POT high and low values
*/
static inline uint16_t map_pot(uint16_t potval)
{
  uint16_t offmap = potval - POT_LOW_THRESHOLD;
  uint16_t mapped = linear_remap(offmap, &POT_INPUT_RANGE, &POT_OUTPUT_RANGE);
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

void setup() {
  // put your setup code here, to run once:
  pinMode(DUTY_CYCLE_POT_PIN, INPUT);

  // Reset pin will take down all outputs at once
  pinMode(RESET_SWITCH_PIN, INPUT_PULLUP);
  pinMode(POLARITY_SWITCH_PIN, INPUT_PULLUP);

  // Output pins
  pinMode(HEN_PWM_PIN, OUTPUT);  // OC4A -> Will generate a PWM which goes to HEN pin of HIP4080A driver
  pinMode(IN_POS_PIN, OUTPUT);   // PB4 -> Used as IN+ port of HIP4080A driver
  pinMode(IN_NEG_PIN, OUTPUT);   // PB5 -> Used as IN- port of HIP4080A driver


  // Configure PLL
  PLLCSR = (1 << PINDIV) | (1 << PLLE); // Enable PLL and use a prescaller of 2 as our input oscillator clocks at 16 MHZ
  PLLFRQ = (1 << PLLTM1) | (1 << PDIV3) | (1 << PDIV1); // PLL set at maximum speed (96MHz) and divided by 1.5 to reach 64MHz (maximum clock input for Timer 4)

  // Wait for PLL to settle
  // Each clock cycle is 63ns.
  // Wait for 100 ms (100 000µs, 100 000 000 ns)
  // 100,000,000 / 315 = 317,460 iterations
  waste_cycles(317460UL);

  // Setup Timer4 with PLL and
  TCCR4A = (1 << COM4A1); // COM4A1 set : OC4A pin connected (Cleared on compare match)
  TCCR4B = (1 << CS40); // Prescaler is equal to 1 ; timer will go at full speed
  TCCR4D &= ~((1 << WGM41) | (1 << WGM40)); // Fast PWM mode
  TCNT4 = 0;
  TC4H = 0;
  OCR4A = 0;
}

void loop() {
  // put your main code here, to run repeatedly:
  int pot = analogRead(DUTY_CYCLE_POT_PIN);

  if (pot < POT_LOW_THRESHOLD)
  {
    stop_timer4();
    digitalWrite(HEN_PWM_PIN, LOW); // overrides PWM
  }
  else if (pot > POT_HIGH_THRESHOLD)
  {
    stop_timer4();
    digitalWrite(HEN_PWM_PIN, HIGH); // overrides PWM
  }
  else
  {
    // Program Timer4 to generate PWM with the right frequency
    start_timer4(); // no effect is timer is already started




  }







}