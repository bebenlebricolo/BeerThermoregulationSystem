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

# Include any dependencies generated for this target.
include AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/compiler_depend.make

# Include the progress variables for this target.
include AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/progress.make

# Include the compile flags for this target's objects.
include AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/flags.make

AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/src/adc_stack.c.obj: AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/flags.make
AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/src/adc_stack.c.obj: ../AvrAsyncCore/Drivers/Adc/src/adc_stack.c
AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/src/adc_stack.c.obj: AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/src/adc_stack.c.obj"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Adc && /usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/src/adc_stack.c.obj -MF CMakeFiles/adc_driver.dir/src/adc_stack.c.obj.d -o CMakeFiles/adc_driver.dir/src/adc_stack.c.obj -c /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Adc/src/adc_stack.c

AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/src/adc_stack.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/adc_driver.dir/src/adc_stack.c.i"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Adc && /usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Adc/src/adc_stack.c > CMakeFiles/adc_driver.dir/src/adc_stack.c.i

AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/src/adc_stack.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/adc_driver.dir/src/adc_stack.c.s"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Adc && /usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Adc/src/adc_stack.c -o CMakeFiles/adc_driver.dir/src/adc_stack.c.s

AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/src/adc.c.obj: AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/flags.make
AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/src/adc.c.obj: ../AvrAsyncCore/Drivers/Adc/src/adc.c
AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/src/adc.c.obj: AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/src/adc.c.obj"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Adc && /usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/src/adc.c.obj -MF CMakeFiles/adc_driver.dir/src/adc.c.obj.d -o CMakeFiles/adc_driver.dir/src/adc.c.obj -c /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Adc/src/adc.c

AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/src/adc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/adc_driver.dir/src/adc.c.i"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Adc && /usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Adc/src/adc.c > CMakeFiles/adc_driver.dir/src/adc.c.i

AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/src/adc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/adc_driver.dir/src/adc.c.s"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Adc && /usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Adc/src/adc.c -o CMakeFiles/adc_driver.dir/src/adc.c.s

# Object files for target adc_driver
adc_driver_OBJECTS = \
"CMakeFiles/adc_driver.dir/src/adc_stack.c.obj" \
"CMakeFiles/adc_driver.dir/src/adc.c.obj"

# External object files for target adc_driver
adc_driver_EXTERNAL_OBJECTS =

AvrAsyncCore/Drivers/Adc/libadc_driver.a: AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/src/adc_stack.c.obj
AvrAsyncCore/Drivers/Adc/libadc_driver.a: AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/src/adc.c.obj
AvrAsyncCore/Drivers/Adc/libadc_driver.a: AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/build.make
AvrAsyncCore/Drivers/Adc/libadc_driver.a: AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libadc_driver.a"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Adc && $(CMAKE_COMMAND) -P CMakeFiles/adc_driver.dir/cmake_clean_target.cmake
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Adc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/adc_driver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/build: AvrAsyncCore/Drivers/Adc/libadc_driver.a
.PHONY : AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/build

AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/clean:
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Adc && $(CMAKE_COMMAND) -P CMakeFiles/adc_driver.dir/cmake_clean.cmake
.PHONY : AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/clean

AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/depend:
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Adc /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Adc /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/build/AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : AvrAsyncCore/Drivers/Adc/CMakeFiles/adc_driver.dir/depend

