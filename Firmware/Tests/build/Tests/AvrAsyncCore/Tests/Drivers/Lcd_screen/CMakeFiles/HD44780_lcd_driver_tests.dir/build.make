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
include Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/compiler_depend.make

# Include the progress variables for this target.
include Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/progress.make

# Include the compile flags for this target's objects.
include Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/flags.make

Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/HD44780_lcd_tests.cpp.o: Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/flags.make
Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/HD44780_lcd_tests.cpp.o: /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Lcd_screen/Tests/HD44780_lcd_tests.cpp
Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/HD44780_lcd_tests.cpp.o: Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/HD44780_lcd_tests.cpp.o"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/HD44780_lcd_tests.cpp.o -MF CMakeFiles/HD44780_lcd_driver_tests.dir/HD44780_lcd_tests.cpp.o.d -o CMakeFiles/HD44780_lcd_driver_tests.dir/HD44780_lcd_tests.cpp.o -c /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Lcd_screen/Tests/HD44780_lcd_tests.cpp

Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/HD44780_lcd_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HD44780_lcd_driver_tests.dir/HD44780_lcd_tests.cpp.i"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Lcd_screen/Tests/HD44780_lcd_tests.cpp > CMakeFiles/HD44780_lcd_driver_tests.dir/HD44780_lcd_tests.cpp.i

Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/HD44780_lcd_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HD44780_lcd_driver_tests.dir/HD44780_lcd_tests.cpp.s"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Lcd_screen/Tests/HD44780_lcd_tests.cpp -o CMakeFiles/HD44780_lcd_driver_tests.dir/HD44780_lcd_tests.cpp.s

Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/i2c_stub.c.o: Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/flags.make
Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/i2c_stub.c.o: /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Lcd_screen/Tests/Stub/i2c_stub.c
Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/i2c_stub.c.o: Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/i2c_stub.c.o"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/i2c_stub.c.o -MF CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/i2c_stub.c.o.d -o CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/i2c_stub.c.o -c /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Lcd_screen/Tests/Stub/i2c_stub.c

Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/i2c_stub.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/i2c_stub.c.i"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Lcd_screen/Tests/Stub/i2c_stub.c > CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/i2c_stub.c.i

Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/i2c_stub.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/i2c_stub.c.s"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Lcd_screen/Tests/Stub/i2c_stub.c -o CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/i2c_stub.c.s

Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/timebase_stub.c.o: Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/flags.make
Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/timebase_stub.c.o: /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Lcd_screen/Tests/Stub/timebase_stub.c
Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/timebase_stub.c.o: Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/timebase_stub.c.o"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/timebase_stub.c.o -MF CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/timebase_stub.c.o.d -o CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/timebase_stub.c.o -c /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Lcd_screen/Tests/Stub/timebase_stub.c

Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/timebase_stub.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/timebase_stub.c.i"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Lcd_screen/Tests/Stub/timebase_stub.c > CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/timebase_stub.c.i

Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/timebase_stub.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/timebase_stub.c.s"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Lcd_screen/Tests/Stub/timebase_stub.c -o CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/timebase_stub.c.s

# Object files for target HD44780_lcd_driver_tests
HD44780_lcd_driver_tests_OBJECTS = \
"CMakeFiles/HD44780_lcd_driver_tests.dir/HD44780_lcd_tests.cpp.o" \
"CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/i2c_stub.c.o" \
"CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/timebase_stub.c.o"

# External object files for target HD44780_lcd_driver_tests
HD44780_lcd_driver_tests_EXTERNAL_OBJECTS =

bin/Drivers/Lcd_screen/HD44780_lcd_driver_tests: Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/HD44780_lcd_tests.cpp.o
bin/Drivers/Lcd_screen/HD44780_lcd_driver_tests: Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/i2c_stub.c.o
bin/Drivers/Lcd_screen/HD44780_lcd_driver_tests: Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/Stub/timebase_stub.c.o
bin/Drivers/Lcd_screen/HD44780_lcd_driver_tests: Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/build.make
bin/Drivers/Lcd_screen/HD44780_lcd_driver_tests: Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/libHD44780_lcd_driver.a
bin/Drivers/Lcd_screen/HD44780_lcd_driver_tests: /usr/lib/libgtest.so.1.11.0
bin/Drivers/Lcd_screen/HD44780_lcd_driver_tests: Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../../../../../bin/Drivers/Lcd_screen/HD44780_lcd_driver_tests"
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HD44780_lcd_driver_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/build: bin/Drivers/Lcd_screen/HD44780_lcd_driver_tests
.PHONY : Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/build

Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/clean:
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen && $(CMAKE_COMMAND) -P CMakeFiles/HD44780_lcd_driver_tests.dir/cmake_clean.cmake
.PHONY : Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/clean

Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/depend:
	cd /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/AvrAsyncCore/Drivers/Lcd_screen/Tests /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen /home/groben/Documents/Repos/LabBenchPowerSupply/Firmware/Tests/build/Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Tests/AvrAsyncCore/Tests/Drivers/Lcd_screen/CMakeFiles/HD44780_lcd_driver_tests.dir/depend

