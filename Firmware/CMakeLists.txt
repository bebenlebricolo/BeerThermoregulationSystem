cmake_minimum_required(VERSION 3.20)
# Use AVR GCC toolchain
set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/AvrAsyncCore/Toolchain/avr8-gcc-toolchain.cmake)

project(BTS-Firmware C)

set(AVR_MCU atmega328pb)
set(AVR_MCU_SPEED 16000000)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_C_STANDARD 11)

add_compile_definitions(
    F_CPU=${AVR_MCU_SPEED}
    __AVR_ATmega328PB__
)
add_compile_options(-mmcu=${AVR_MCU})

set(CMAKE_EXE_LINKER_FLAGS "-mmcu=${AVR_MCU}")

# This variable is needed by some drivers in order to locate the config.h file
# Provided by the application
set (CONFIG_FILE_DIR ${CMAKE_SOURCE_DIR}/App/inc)

add_subdirectory(${CMAKE_SOURCE_DIR}/AvrAsyncCore)
add_subdirectory(${CMAKE_SOURCE_DIR}/App)
add_subdirectory(${CMAKE_SOURCE_DIR}/Sensors)

