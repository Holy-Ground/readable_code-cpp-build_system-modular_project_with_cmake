# Basic configurations
cmake_minimum_required(VERSION 3.11) # Minimum CMake version required
project(3.BEST_PRACTICES-ULTIMATE_PROJECT_STRUCTURE) # Required for CMake to know what project this is

message(STATUS "")
message(STATUS "Started all process in ${PROJECT_NAME} CMakeLists.txt.")

add_subdirectory(project_structure)
message(STATUS "Finished all process in ${PROJECT_NAME} CMakeLists.txt.")
message(STATUS "")
