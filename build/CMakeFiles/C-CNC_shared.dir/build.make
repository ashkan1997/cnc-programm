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

# Include any dependencies generated for this target.
include CMakeFiles/C-CNC_shared.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/C-CNC_shared.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/C-CNC_shared.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/C-CNC_shared.dir/flags.make

CMakeFiles/C-CNC_shared.dir/src/bock_la.c.o: CMakeFiles/C-CNC_shared.dir/flags.make
CMakeFiles/C-CNC_shared.dir/src/bock_la.c.o: /Users/ashkan/Desktop/university/2021-22/precision\ engineering\ /project/project\ last/cnc-programm/src/bock_la.c
CMakeFiles/C-CNC_shared.dir/src/bock_la.c.o: CMakeFiles/C-CNC_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/C-CNC_shared.dir/src/bock_la.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/C-CNC_shared.dir/src/bock_la.c.o -MF CMakeFiles/C-CNC_shared.dir/src/bock_la.c.o.d -o CMakeFiles/C-CNC_shared.dir/src/bock_la.c.o -c "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/bock_la.c"

CMakeFiles/C-CNC_shared.dir/src/bock_la.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/C-CNC_shared.dir/src/bock_la.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/bock_la.c" > CMakeFiles/C-CNC_shared.dir/src/bock_la.c.i

CMakeFiles/C-CNC_shared.dir/src/bock_la.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/C-CNC_shared.dir/src/bock_la.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/bock_la.c" -o CMakeFiles/C-CNC_shared.dir/src/bock_la.c.s

CMakeFiles/C-CNC_shared.dir/src/fsm_la.c.o: CMakeFiles/C-CNC_shared.dir/flags.make
CMakeFiles/C-CNC_shared.dir/src/fsm_la.c.o: /Users/ashkan/Desktop/university/2021-22/precision\ engineering\ /project/project\ last/cnc-programm/src/fsm_la.c
CMakeFiles/C-CNC_shared.dir/src/fsm_la.c.o: CMakeFiles/C-CNC_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/C-CNC_shared.dir/src/fsm_la.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/C-CNC_shared.dir/src/fsm_la.c.o -MF CMakeFiles/C-CNC_shared.dir/src/fsm_la.c.o.d -o CMakeFiles/C-CNC_shared.dir/src/fsm_la.c.o -c "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/fsm_la.c"

CMakeFiles/C-CNC_shared.dir/src/fsm_la.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/C-CNC_shared.dir/src/fsm_la.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/fsm_la.c" > CMakeFiles/C-CNC_shared.dir/src/fsm_la.c.i

CMakeFiles/C-CNC_shared.dir/src/fsm_la.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/C-CNC_shared.dir/src/fsm_la.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/fsm_la.c" -o CMakeFiles/C-CNC_shared.dir/src/fsm_la.c.s

CMakeFiles/C-CNC_shared.dir/src/machine.c.o: CMakeFiles/C-CNC_shared.dir/flags.make
CMakeFiles/C-CNC_shared.dir/src/machine.c.o: /Users/ashkan/Desktop/university/2021-22/precision\ engineering\ /project/project\ last/cnc-programm/src/machine.c
CMakeFiles/C-CNC_shared.dir/src/machine.c.o: CMakeFiles/C-CNC_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/C-CNC_shared.dir/src/machine.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/C-CNC_shared.dir/src/machine.c.o -MF CMakeFiles/C-CNC_shared.dir/src/machine.c.o.d -o CMakeFiles/C-CNC_shared.dir/src/machine.c.o -c "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/machine.c"

CMakeFiles/C-CNC_shared.dir/src/machine.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/C-CNC_shared.dir/src/machine.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/machine.c" > CMakeFiles/C-CNC_shared.dir/src/machine.c.i

CMakeFiles/C-CNC_shared.dir/src/machine.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/C-CNC_shared.dir/src/machine.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/machine.c" -o CMakeFiles/C-CNC_shared.dir/src/machine.c.s

CMakeFiles/C-CNC_shared.dir/src/point.c.o: CMakeFiles/C-CNC_shared.dir/flags.make
CMakeFiles/C-CNC_shared.dir/src/point.c.o: /Users/ashkan/Desktop/university/2021-22/precision\ engineering\ /project/project\ last/cnc-programm/src/point.c
CMakeFiles/C-CNC_shared.dir/src/point.c.o: CMakeFiles/C-CNC_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/C-CNC_shared.dir/src/point.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/C-CNC_shared.dir/src/point.c.o -MF CMakeFiles/C-CNC_shared.dir/src/point.c.o.d -o CMakeFiles/C-CNC_shared.dir/src/point.c.o -c "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/point.c"

CMakeFiles/C-CNC_shared.dir/src/point.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/C-CNC_shared.dir/src/point.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/point.c" > CMakeFiles/C-CNC_shared.dir/src/point.c.i

CMakeFiles/C-CNC_shared.dir/src/point.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/C-CNC_shared.dir/src/point.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/point.c" -o CMakeFiles/C-CNC_shared.dir/src/point.c.s

CMakeFiles/C-CNC_shared.dir/src/program_la.c.o: CMakeFiles/C-CNC_shared.dir/flags.make
CMakeFiles/C-CNC_shared.dir/src/program_la.c.o: /Users/ashkan/Desktop/university/2021-22/precision\ engineering\ /project/project\ last/cnc-programm/src/program_la.c
CMakeFiles/C-CNC_shared.dir/src/program_la.c.o: CMakeFiles/C-CNC_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/C-CNC_shared.dir/src/program_la.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/C-CNC_shared.dir/src/program_la.c.o -MF CMakeFiles/C-CNC_shared.dir/src/program_la.c.o.d -o CMakeFiles/C-CNC_shared.dir/src/program_la.c.o -c "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/program_la.c"

CMakeFiles/C-CNC_shared.dir/src/program_la.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/C-CNC_shared.dir/src/program_la.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/program_la.c" > CMakeFiles/C-CNC_shared.dir/src/program_la.c.i

CMakeFiles/C-CNC_shared.dir/src/program_la.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/C-CNC_shared.dir/src/program_la.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/program_la.c" -o CMakeFiles/C-CNC_shared.dir/src/program_la.c.s

CMakeFiles/C-CNC_shared.dir/src/utils.c.o: CMakeFiles/C-CNC_shared.dir/flags.make
CMakeFiles/C-CNC_shared.dir/src/utils.c.o: /Users/ashkan/Desktop/university/2021-22/precision\ engineering\ /project/project\ last/cnc-programm/src/utils.c
CMakeFiles/C-CNC_shared.dir/src/utils.c.o: CMakeFiles/C-CNC_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/C-CNC_shared.dir/src/utils.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/C-CNC_shared.dir/src/utils.c.o -MF CMakeFiles/C-CNC_shared.dir/src/utils.c.o.d -o CMakeFiles/C-CNC_shared.dir/src/utils.c.o -c "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/utils.c"

CMakeFiles/C-CNC_shared.dir/src/utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/C-CNC_shared.dir/src/utils.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/utils.c" > CMakeFiles/C-CNC_shared.dir/src/utils.c.i

CMakeFiles/C-CNC_shared.dir/src/utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/C-CNC_shared.dir/src/utils.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/utils.c" -o CMakeFiles/C-CNC_shared.dir/src/utils.c.s

CMakeFiles/C-CNC_shared.dir/src/inic.cpp.o: CMakeFiles/C-CNC_shared.dir/flags.make
CMakeFiles/C-CNC_shared.dir/src/inic.cpp.o: /Users/ashkan/Desktop/university/2021-22/precision\ engineering\ /project/project\ last/cnc-programm/src/inic.cpp
CMakeFiles/C-CNC_shared.dir/src/inic.cpp.o: CMakeFiles/C-CNC_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/C-CNC_shared.dir/src/inic.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/C-CNC_shared.dir/src/inic.cpp.o -MF CMakeFiles/C-CNC_shared.dir/src/inic.cpp.o.d -o CMakeFiles/C-CNC_shared.dir/src/inic.cpp.o -c "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/inic.cpp"

CMakeFiles/C-CNC_shared.dir/src/inic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/C-CNC_shared.dir/src/inic.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/inic.cpp" > CMakeFiles/C-CNC_shared.dir/src/inic.cpp.i

CMakeFiles/C-CNC_shared.dir/src/inic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/C-CNC_shared.dir/src/inic.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/src/inic.cpp" -o CMakeFiles/C-CNC_shared.dir/src/inic.cpp.s

# Object files for target C-CNC_shared
C__CNC_shared_OBJECTS = \
"CMakeFiles/C-CNC_shared.dir/src/bock_la.c.o" \
"CMakeFiles/C-CNC_shared.dir/src/fsm_la.c.o" \
"CMakeFiles/C-CNC_shared.dir/src/machine.c.o" \
"CMakeFiles/C-CNC_shared.dir/src/point.c.o" \
"CMakeFiles/C-CNC_shared.dir/src/program_la.c.o" \
"CMakeFiles/C-CNC_shared.dir/src/utils.c.o" \
"CMakeFiles/C-CNC_shared.dir/src/inic.cpp.o"

# External object files for target C-CNC_shared
C__CNC_shared_EXTERNAL_OBJECTS =

libC-CNC_shared.dylib: CMakeFiles/C-CNC_shared.dir/src/bock_la.c.o
libC-CNC_shared.dylib: CMakeFiles/C-CNC_shared.dir/src/fsm_la.c.o
libC-CNC_shared.dylib: CMakeFiles/C-CNC_shared.dir/src/machine.c.o
libC-CNC_shared.dylib: CMakeFiles/C-CNC_shared.dir/src/point.c.o
libC-CNC_shared.dylib: CMakeFiles/C-CNC_shared.dir/src/program_la.c.o
libC-CNC_shared.dylib: CMakeFiles/C-CNC_shared.dir/src/utils.c.o
libC-CNC_shared.dylib: CMakeFiles/C-CNC_shared.dir/src/inic.cpp.o
libC-CNC_shared.dylib: CMakeFiles/C-CNC_shared.dir/build.make
libC-CNC_shared.dylib: CMakeFiles/C-CNC_shared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX shared library libC-CNC_shared.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/C-CNC_shared.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/C-CNC_shared.dir/build: libC-CNC_shared.dylib
.PHONY : CMakeFiles/C-CNC_shared.dir/build

CMakeFiles/C-CNC_shared.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/C-CNC_shared.dir/cmake_clean.cmake
.PHONY : CMakeFiles/C-CNC_shared.dir/clean

CMakeFiles/C-CNC_shared.dir/depend:
	cd "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm" "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm" "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build" "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build" "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/CMakeFiles/C-CNC_shared.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/C-CNC_shared.dir/depend

