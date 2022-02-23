cmake_minimum_required(VERSION 3.20)
# Use AVR GCC toolchain (it needs to be added before declaring a CMake project )
set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/AvrAsyncCore/Toolchain/avr8-gcc-toolchain.cmake)

project(BTS-Firmware C)

# Defining some C/C++ standards
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_C_STANDARD 11)

# Building this project for ATmega328PB target
set(AVR_MCU atmega328pb)
set(AVR_MCU_SPEED 16000000)
set(AVR_MCU_HEADER_DEFINITION __AVR_ATmega328P__)

# Global definitions for avr-gcc
add_compile_definitions(
    F_CPU=${AVR_MCU_SPEED}
    ${AVR_MCU_HEADER_DEFINITION}
)
add_compile_options(-mmcu=${AVR_MCU})

# This variable is needed by some drivers in order to locate the config.h file
# Provided by the application
set (CONFIG_FILE_DIR ${CMAKE_SOURCE_DIR}/App/inc)

# Configure AvrAsyncCore project
add_subdirectory(${CMAKE_SOURCE_DIR}/AvrAsyncCore)

