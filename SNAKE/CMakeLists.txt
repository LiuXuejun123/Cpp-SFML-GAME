cmake_minimum_required(VERSION 3.16)
project(SNAKE)

set(CMAKE_CXX_STANDARD 14)
set(SFML_DIR "D:/MinGW/SFML-2.5.1/lib/cmake/SFML")
find_package(SFML REQUIRED COMPONENTS audio network graphics window system)

if (NOT SFML_FOUND)
    message(FATAL_ERROR "SFML NOT FOUND!")
else()
    message("SFML FOUND!")
endif()


include_directories(${SFML_INCLUDE_DIR})
add_executable(SNAKE main.cpp)
target_link_libraries(SNAKE sfml-audio sfml-network sfml-graphics sfml-window sfml-system)