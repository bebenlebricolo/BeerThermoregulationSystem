# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build

# Utility rule file for hex.

# Include any custom commands dependencies for this target.
include App/CMakeFiles/hex.dir/compiler_depend.make

# Include the progress variables for this target.
include App/CMakeFiles/hex.dir/progress.make

App/CMakeFiles/hex:
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/App && avr-objcopy -R .eeprom -O ihex firmware firmware.hex

hex: App/CMakeFiles/hex
hex: App/CMakeFiles/hex.dir/build.make
.PHONY : hex

# Rule to build all files generated by this target.
App/CMakeFiles/hex.dir/build: hex
.PHONY : App/CMakeFiles/hex.dir/build

App/CMakeFiles/hex.dir/clean:
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/App && $(CMAKE_COMMAND) -P CMakeFiles/hex.dir/cmake_clean.cmake
.PHONY : App/CMakeFiles/hex.dir/clean

App/CMakeFiles/hex.dir/depend:
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/App /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/App /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/App/CMakeFiles/hex.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : App/CMakeFiles/hex.dir/depend

