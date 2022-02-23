# Install script for directory: /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/avr-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Adc/cmake_install.cmake")
  include("/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Timers/Timer_8_bit/cmake_install.cmake")
  include("/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Timers/Timer_8_bit_async/cmake_install.cmake")
  include("/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Timers/Timer_16_bit/cmake_install.cmake")
  include("/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Timers/Timer_generic/cmake_install.cmake")
  include("/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/I2c/cmake_install.cmake")
  include("/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Lcd_screen/cmake_install.cmake")
  include("/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Io/cmake_install.cmake")

endif()

