# Basic configurations
cmake_minimum_required(VERSION 3.11) # Minimum CMake version required
project(3.AUTOMATIONS) # Required for CMake to know what project this is

message(STATUS "")
message(STATUS "Started all process in ${PROJECT_NAME} CMakeLists.txt.")
message(STATUS "")

message(STATUS "Example: External scripts")
message(STATUS "This example shows how to use external scripts in CMake.")

message(STATUS "")
execute_process(
  COMMAND chmod +x external_script.sh
  COMMAND sh external_script.sh
  WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/scripts
  RESULT_VARIABLE RESULT_CODE
  OUTPUT_VARIABLE OUTPUT_RESULT)

if(${RESULT_CODE} EQUAL 0)
  message(STATUS "Output: ${OUTPUT_RESULT}")
else()
  message(STATUS "Error code: ${RESULT_CODE}")
endif()

message(STATUS "")

message(STATUS "")
message(STATUS "Finished all process in ${PROJECT_NAME} CMakeLists.txt.")
message(STATUS "")
