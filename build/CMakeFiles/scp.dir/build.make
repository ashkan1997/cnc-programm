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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.26.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.26.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build"

# Utility rule file for scp.

# Include any custom commands dependencies for this target.
include CMakeFiles/scp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/scp.dir/progress.make

CMakeFiles/scp:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Copying products to debian@beaglebone.local"
	cd "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm" && scp -r products/* debian@beaglebone.local:

scp: CMakeFiles/scp
scp: CMakeFiles/scp.dir/build.make
.PHONY : scp

# Rule to build all files generated by this target.
CMakeFiles/scp.dir/build: scp
.PHONY : CMakeFiles/scp.dir/build

CMakeFiles/scp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/scp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/scp.dir/clean

CMakeFiles/scp.dir/depend:
	cd "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm" "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm" "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build" "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build" "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/CMakeFiles/scp.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/scp.dir/depend

