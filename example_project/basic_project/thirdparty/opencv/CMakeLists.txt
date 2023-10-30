cmake_minimum_required(VERSION 3.11)

include(configurate_package.cmake)

message(STATUS "Start installation verification for ${PROJECT_NAME}.\n")

find_package(${PROJECT_NAME} QUIET HINTS ${${PROJECT_NAME}_INSTALL_PATH}/lib/cmake/${PROJECT_NAME})

if(${PROJECT_NAME}_FOUND)
  message(STATUS "Found ${PROJECT_NAME}.")
else()
  message(STATUS "Not found ${PROJECT_NAME}! Using ExternalProject.")
  message(STATUS "Start install for ${PROJECT_NAME}.\n")

  configure_file(CMakeLists.txt.in ${PROJECT_NAME}/CMakeLists.txt)
  execute_process(COMMAND ${CMAKE_COMMAND} "${CMAKE_GENERATOR}" .
    WORKING_DIRECTORY
    ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME})
  execute_process(COMMAND ${CMAKE_COMMAND} --build .
    WORKING_DIRECTORY
    ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME})
  message(STATUS "Finish install for ${PROJECT_NAME}.\n")
endif()

message(STATUS "Finish installation verification for ${PROJECT_NAME}.\n")
