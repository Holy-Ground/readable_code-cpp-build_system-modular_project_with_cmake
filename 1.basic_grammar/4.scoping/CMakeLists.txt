# Basic configurations
cmake_minimum_required(VERSION 3.11) # Minimum CMake version required
project(4.SCOPING) # Required for CMake to know what project this is

message(STATUS)
message(STATUS "Started all process in ${PROJECT_NAME} CMakeLists.txt.")
message(STATUS)

add_subdirectory(parent)

message(STATUS "On top-level:")
message(STATUS "CHILD_STRING_VALIABLE: ${CHILD_STRING_VALIABLE}")
message(STATUS "PARENT_STRING_VARIABLE: ${PARENT_STRING_VARIABLE}")
message(STATUS "GLOBAL_STRING_VARIABLE: ${GLOBAL_STRING_VARIABLE}")
message(STATUS "")

message(STATUS)
message(STATUS "Finished all process in ${PROJECT_NAME} CMakeLists.txt.")
message(STATUS)
