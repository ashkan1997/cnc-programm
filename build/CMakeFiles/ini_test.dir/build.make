# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.26.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.26.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build"

# Include any dependencies generated for this target.
include CMakeFiles/ini_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ini_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ini_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ini_test.dir/flags.make

CMakeFiles/ini_test.dir/src/main/ini_test.c.o: CMakeFiles/ini_test.dir/flags.make
CMakeFiles/ini_test.dir/src/main/ini_test.c.o: /Users/ashkan/Desktop/university/2021-22/precision\ engineering\ /project/project\ last/cnc-programm/src/main/ini_test.c
CMakeFiles/ini_test.dir/src/main/ini_test.c.o: CMakeFiles/ini_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ini_test.dir/src/main/ini_test.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ini_test.dir/src/main/ini_test.c.o -MF CMakeFiles/ini_test.dir/src/main/ini_test.c.o.d -o CMakeFiles/ini_test.dir/src/main/ini_test.c.o -c "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/main/ini_test.c"

CMakeFiles/ini_test.dir/src/main/ini_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ini_test.dir/src/main/ini_test.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/main/ini_test.c" > CMakeFiles/ini_test.dir/src/main/ini_test.c.i

CMakeFiles/ini_test.dir/src/main/ini_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ini_test.dir/src/main/ini_test.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/main/ini_test.c" -o CMakeFiles/ini_test.dir/src/main/ini_test.c.s

# Object files for target ini_test
ini_test_OBJECTS = \
"CMakeFiles/ini_test.dir/src/main/ini_test.c.o"

# External object files for target ini_test
ini_test_EXTERNAL_OBJECTS =

ini_test: CMakeFiles/ini_test.dir/src/main/ini_test.c.o
ini_test: CMakeFiles/ini_test.dir/build.make
ini_test: libC-CNC_shared.dylib
ini_test: CMakeFiles/ini_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ini_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ini_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ini_test.dir/build: ini_test
.PHONY : CMakeFiles/ini_test.dir/build

CMakeFiles/ini_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ini_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ini_test.dir/clean

CMakeFiles/ini_test.dir/depend:
	cd "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm" "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm" "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build" "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build" "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/CMakeFiles/ini_test.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/ini_test.dir/depend
