# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_SOURCE_DIR = /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build

# Include any dependencies generated for this target.
include Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/compiler_depend.make

# Include the progress variables for this target.
include Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/progress.make

# Include the compile flags for this target's objects.
include Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/flags.make

Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c.o: Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/flags.make
Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c.o: /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c
Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c.o: Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c.o"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Modules/Timebase && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c.o -MF CMakeFiles/timebase_module.dir/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c.o.d -o CMakeFiles/timebase_module.dir/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c.o -c /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c

Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/timebase_module.dir/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c.i"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Modules/Timebase && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c > CMakeFiles/timebase_module.dir/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c.i

Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/timebase_module.dir/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c.s"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Modules/Timebase && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c -o CMakeFiles/timebase_module.dir/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c.s

# Object files for target timebase_module
timebase_module_OBJECTS = \
"CMakeFiles/timebase_module.dir/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c.o"

# External object files for target timebase_module
timebase_module_EXTERNAL_OBJECTS =

Tests/AvrAsyncCore/Tests/Modules/Timebase/libtimebase_module.a: Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/src/timebase.c.o
Tests/AvrAsyncCore/Tests/Modules/Timebase/libtimebase_module.a: Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/build.make
Tests/AvrAsyncCore/Tests/Modules/Timebase/libtimebase_module.a: Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libtimebase_module.a"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Modules/Timebase && $(CMAKE_COMMAND) -P CMakeFiles/timebase_module.dir/cmake_clean_target.cmake
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Modules/Timebase && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/timebase_module.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/build: Tests/AvrAsyncCore/Tests/Modules/Timebase/libtimebase_module.a
.PHONY : Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/build

Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/clean:
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Modules/Timebase && $(CMAKE_COMMAND) -P CMakeFiles/timebase_module.dir/cmake_clean.cmake
.PHONY : Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/clean

Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/depend:
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Modules/Timebase/Tests /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Modules/Timebase /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Tests/AvrAsyncCore/Tests/Modules/Timebase/CMakeFiles/timebase_module.dir/depend

