# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion\CLion 2020.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion\CLion 2020.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\liuxu\Desktop\C++SMFL\ Snake"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\liuxu\Desktop\C++SMFL\ Snake\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/TETRIS.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TETRIS.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TETRIS.dir/flags.make

CMakeFiles/TETRIS.dir/main.cpp.obj: CMakeFiles/TETRIS.dir/flags.make
CMakeFiles/TETRIS.dir/main.cpp.obj: CMakeFiles/TETRIS.dir/includes_CXX.rsp
CMakeFiles/TETRIS.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\liuxu\Desktop\C++SMFL\ Snake\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TETRIS.dir/main.cpp.obj"
	"D:\MinGW\x86_64-7.3.0-release-posix-seh-rt_v5-rev0 (1)\mingw64\bin\g++.exe"  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\TETRIS.dir\main.cpp.obj -c "C:\Users\liuxu\Desktop\C++SMFL\ Snake\main.cpp"

CMakeFiles/TETRIS.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TETRIS.dir/main.cpp.i"
	"D:\MinGW\x86_64-7.3.0-release-posix-seh-rt_v5-rev0 (1)\mingw64\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\liuxu\Desktop\C++SMFL\ Snake\main.cpp" > CMakeFiles\TETRIS.dir\main.cpp.i

CMakeFiles/TETRIS.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TETRIS.dir/main.cpp.s"
	"D:\MinGW\x86_64-7.3.0-release-posix-seh-rt_v5-rev0 (1)\mingw64\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\liuxu\Desktop\C++SMFL\ Snake\main.cpp" -o CMakeFiles\TETRIS.dir\main.cpp.s

# Object files for target TETRIS
TETRIS_OBJECTS = \
"CMakeFiles/TETRIS.dir/main.cpp.obj"

# External object files for target TETRIS
TETRIS_EXTERNAL_OBJECTS =

TETRIS.exe: CMakeFiles/TETRIS.dir/main.cpp.obj
TETRIS.exe: CMakeFiles/TETRIS.dir/build.make
TETRIS.exe: D:/MinGW/SFML-2.5.1/lib/libsfml-audio-d.a
TETRIS.exe: D:/MinGW/SFML-2.5.1/lib/libsfml-network-d.a
TETRIS.exe: D:/MinGW/SFML-2.5.1/lib/libsfml-graphics-d.a
TETRIS.exe: D:/MinGW/SFML-2.5.1/lib/libsfml-window-d.a
TETRIS.exe: D:/MinGW/SFML-2.5.1/lib/libsfml-system-d.a
TETRIS.exe: CMakeFiles/TETRIS.dir/linklibs.rsp
TETRIS.exe: CMakeFiles/TETRIS.dir/objects1.rsp
TETRIS.exe: CMakeFiles/TETRIS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\liuxu\Desktop\C++SMFL\ Snake\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TETRIS.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\TETRIS.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TETRIS.dir/build: TETRIS.exe

.PHONY : CMakeFiles/TETRIS.dir/build

CMakeFiles/TETRIS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\TETRIS.dir\cmake_clean.cmake
.PHONY : CMakeFiles/TETRIS.dir/clean

CMakeFiles/TETRIS.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\liuxu\Desktop\C++SMFL\ Snake" "C:\Users\liuxu\Desktop\C++SMFL\ Snake" "C:\Users\liuxu\Desktop\C++SMFL\ Snake\cmake-build-debug" "C:\Users\liuxu\Desktop\C++SMFL\ Snake\cmake-build-debug" "C:\Users\liuxu\Desktop\C++SMFL\ Snake\cmake-build-debug\CMakeFiles\TETRIS.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/TETRIS.dir/depend

