# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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


# Suppress display of executed commands.
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
CMAKE_SOURCE_DIR = /home/ramji/Desktop/CS525

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ramji/Desktop/CS525/build

# Include any dependencies generated for this target.
include paint/CMakeFiles/Paint.dir/depend.make

# Include the progress variables for this target.
include paint/CMakeFiles/Paint.dir/progress.make

# Include the compile flags for this target's objects.
include paint/CMakeFiles/Paint.dir/flags.make

paint/CMakeFiles/Paint.dir/src/main.cpp.o: paint/CMakeFiles/Paint.dir/flags.make
paint/CMakeFiles/Paint.dir/src/main.cpp.o: ../paint/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ramji/Desktop/CS525/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object paint/CMakeFiles/Paint.dir/src/main.cpp.o"
	cd /home/ramji/Desktop/CS525/build/paint && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Paint.dir/src/main.cpp.o -c /home/ramji/Desktop/CS525/paint/src/main.cpp

paint/CMakeFiles/Paint.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Paint.dir/src/main.cpp.i"
	cd /home/ramji/Desktop/CS525/build/paint && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ramji/Desktop/CS525/paint/src/main.cpp > CMakeFiles/Paint.dir/src/main.cpp.i

paint/CMakeFiles/Paint.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Paint.dir/src/main.cpp.s"
	cd /home/ramji/Desktop/CS525/build/paint && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ramji/Desktop/CS525/paint/src/main.cpp -o CMakeFiles/Paint.dir/src/main.cpp.s

paint/CMakeFiles/Paint.dir/src/network/networkvm.cpp.o: paint/CMakeFiles/Paint.dir/flags.make
paint/CMakeFiles/Paint.dir/src/network/networkvm.cpp.o: ../paint/src/network/networkvm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ramji/Desktop/CS525/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object paint/CMakeFiles/Paint.dir/src/network/networkvm.cpp.o"
	cd /home/ramji/Desktop/CS525/build/paint && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Paint.dir/src/network/networkvm.cpp.o -c /home/ramji/Desktop/CS525/paint/src/network/networkvm.cpp

paint/CMakeFiles/Paint.dir/src/network/networkvm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Paint.dir/src/network/networkvm.cpp.i"
	cd /home/ramji/Desktop/CS525/build/paint && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ramji/Desktop/CS525/paint/src/network/networkvm.cpp > CMakeFiles/Paint.dir/src/network/networkvm.cpp.i

paint/CMakeFiles/Paint.dir/src/network/networkvm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Paint.dir/src/network/networkvm.cpp.s"
	cd /home/ramji/Desktop/CS525/build/paint && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ramji/Desktop/CS525/paint/src/network/networkvm.cpp -o CMakeFiles/Paint.dir/src/network/networkvm.cpp.s

# Object files for target Paint
Paint_OBJECTS = \
"CMakeFiles/Paint.dir/src/main.cpp.o" \
"CMakeFiles/Paint.dir/src/network/networkvm.cpp.o"

# External object files for target Paint
Paint_EXTERNAL_OBJECTS =

paint/Paint: paint/CMakeFiles/Paint.dir/src/main.cpp.o
paint/Paint: paint/CMakeFiles/Paint.dir/src/network/networkvm.cpp.o
paint/Paint: paint/CMakeFiles/Paint.dir/build.make
paint/Paint: app/libApplication.a
paint/Paint: paint/vendor/network/libNetwork.a
paint/Paint: app/vendor/glfw/src/libglfw3.a
paint/Paint: /usr/lib/x86_64-linux-gnu/librt.so
paint/Paint: /usr/lib/x86_64-linux-gnu/libm.so
paint/Paint: /usr/lib/x86_64-linux-gnu/libX11.so
paint/Paint: app/vendor/glad/libglad.a
paint/Paint: app/vendor/freetype-gl/libfreetype-gl.a
paint/Paint: app/vendor/freetype/libfreetyped.a
paint/Paint: /usr/lib/x86_64-linux-gnu/libz.so
paint/Paint: /usr/lib/x86_64-linux-gnu/libbz2.so
paint/Paint: /usr/lib/x86_64-linux-gnu/libpng.so
paint/Paint: /usr/lib/x86_64-linux-gnu/libz.so
paint/Paint: /usr/lib/x86_64-linux-gnu/libbz2.so
paint/Paint: /usr/lib/x86_64-linux-gnu/libpng.so
paint/Paint: app/vendor/lua/libLua.a
paint/Paint: paint/CMakeFiles/Paint.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ramji/Desktop/CS525/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Paint"
	cd /home/ramji/Desktop/CS525/build/paint && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Paint.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
paint/CMakeFiles/Paint.dir/build: paint/Paint

.PHONY : paint/CMakeFiles/Paint.dir/build

paint/CMakeFiles/Paint.dir/clean:
	cd /home/ramji/Desktop/CS525/build/paint && $(CMAKE_COMMAND) -P CMakeFiles/Paint.dir/cmake_clean.cmake
.PHONY : paint/CMakeFiles/Paint.dir/clean

paint/CMakeFiles/Paint.dir/depend:
	cd /home/ramji/Desktop/CS525/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ramji/Desktop/CS525 /home/ramji/Desktop/CS525/paint /home/ramji/Desktop/CS525/build /home/ramji/Desktop/CS525/build/paint /home/ramji/Desktop/CS525/build/paint/CMakeFiles/Paint.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : paint/CMakeFiles/Paint.dir/depend

