# Basic configurations
cmake_minimum_required(VERSION 3.11) # Minimum CMake version required
project(MODULAR_PROJECT_WITH_CMAKE) # Required for CMake to know what project this is

message(STATUS)
message(STATUS "Started all process in ${PROJECT_NAME} CMakeLists.txt.")
add_subdirectory(1.basic_grammar)
add_subdirectory(2.advanced_topics)
# add_subdirectory(3.best_practices-ultimate_project_structure)
message(STATUS "Finished all process in ${PROJECT_NAME} CMakeLists.txt.")
message(STATUS)

# 리더블 코드니까 강의 처음에 기술법을 알려주는게 좋을 것 같다.
