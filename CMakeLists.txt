# Basic configurations
cmake_minimum_required(VERSION 3.11) # Minimum CMake version required
project(MODULAR_PROJECT_WITH_CMAKE
  LANGUAGES CXX
  VERSION 1.2.3.4
  DESCRIPTION "The CMake example repo for Modular Project with CMake lecture"
  HOMEPAGE_URL "studio.holyground.com"
) # Required for CMake to know what project this is

message(STATUS "")
message(STATUS "Started all process in ${PROJECT_NAME} CMakeLists.txt.")

# add_subdirectory(1.basic_grammar)
# add_subdirectory(2.advanced_topics)
# add_subdirectory(3.best_practices-ultimate_project_structure)

message(STATUS "Finished all process in ${PROJECT_NAME} CMakeLists.txt.")
message(STATUS "")
