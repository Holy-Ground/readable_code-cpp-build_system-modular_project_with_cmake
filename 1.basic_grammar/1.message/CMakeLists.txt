# Basic configurations
cmake_minimum_required(VERSION 3.11) # Minimum CMake version required
project(1.MESSAGE) # Required for CMake to know what project this is

message(STATUS)
message(STATUS "Started all process in ${PROJECT_NAME} CMakeLists.txt.")
message(STATUS)

# message(STATUS "Example 1: STATUS")
# message(STATUS "Configuration: Continue")
# message(STATUS "Build file generation: Continue")
# message(STATUS "This is a status message.")

# Message type WARNING
# message(STATUS "Example 2: WARNING")
# message(STATUS "Configuration: Continue")
# message(STATUS "Build file generation: Continue")
# message(WARNING "This warning is for all!")

# message(STATUS "Example 3: AUTHOR_WARNING")
# message(STATUS "Configuration: Continue")
# message(STATUS "Build file generation: Continue")
# set(CMAKE_SUPPRESS_DEVELOPER_WARNINGS OFF CACHE INTERNAL "Suppress Developer Warnings")
# message(AUTHOR_WARNING "This warning is for developers only!")

# message(STATUS "Example 4: SEND_ERROR")
# message(STATUS "Configuration: Continue")
# message(STATUS "Build file generation: Stop")
# message(STATUS "But it will stop the generation process.")
# message(SEND_ERROR "Error during configuration!")

# message(STATUS "Example 5: FATAL_ERROR")
# message(STATUS "Configuration: Stop")
# message(STATUS "Build file generation: Stop")
# message(FATAL_ERROR "Fatal error during configuration!")

# message(STATUS "Example 6: DEPRECATION")
# message(STATUS "Configuration: Continue")
# message(STATUS "Build file generation: Continue")
# message(DEPRECATION "This is deprecated!")

message(STATUS)
message(STATUS "Finished all process in ${PROJECT_NAME} CMakeLists.txt.")
message(STATUS)
