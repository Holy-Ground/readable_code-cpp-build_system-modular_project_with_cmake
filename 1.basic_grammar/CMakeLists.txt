# Basic configurations
cmake_minimum_required(VERSION 3.11) # Minimum CMake version required
project(1.BASIC_GRAMMAR) # Required for CMake to know what project this is

message(STATUS)
message(STATUS "Started all process in ${PROJECT_NAME} CMakeLists.txt.")

add_subdirectory(1.message)
add_subdirectory(2.variables)
add_subdirectory(3.control_statements)
add_subdirectory(4.scoping)
add_subdirectory(5.file_system)
add_subdirectory(6.setting_cpp_project)
message(STATUS "Finished all process in ${PROJECT_NAME} CMakeLists.txt.")
message(STATUS)
