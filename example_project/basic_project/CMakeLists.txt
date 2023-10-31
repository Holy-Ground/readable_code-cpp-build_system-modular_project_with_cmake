project( # Required for CMake to know what project this is
  BASIC_PROJECT # Project name
  LANGUAGES CXX # Project language
  VERSION 3.2.5.34 # Project version number major.minor.patch
  DESCRIPTION "A repo for modular project with CMake lecture" # Project description
  HOMEPAGE_URL "studio.holyground.com"
)

SET(CMAKE_VERBOSE_MAKEFILE true) # Set to true to see all the commands in make file

set(CMAKE_CXX_STANDARD 17) # Set C++ standard to C++17
set(CMAKE_CXX_STANDARD_REQUIRED ON) # Set C++ standard required
set(CMAKE_CXX_EXTENSIONS OFF) # Set C++ extensions off

add_compile_options(-Wall -Wextra -Wpedantic -Werror) # Set compiler options

set(${PROJECT_NAME}_PATH ${CMAKE_CURRENT_SOURCE_DIR})
set(${PROJECT_NAME}_SOURCE_PATH "${${PROJECT_NAME}_PATH}/src")
set(${PROJECT_NAME}_INCLUDE_PATH "${${PROJECT_NAME}_PATH}/include")
set(${PROJECT_NAME}_TEST_PATH "${${PROJECT_NAME}_PATH}/test")
set(${PROJECT_NAME}_MODULE_PATH "${${PROJECT_NAME}_PATH}/module")
set(${PROJECT_NAME}_THIRDPARTY_PATH "${${PROJECT_NAME}_PATH}/thirdparty")

message(STATUS)
message(STATUS "CMake version: ${CMAKE_VERSION}")
message(STATUS)
message(STATUS "System architecture name: ${CMAKE_HOST_SYSTEM_PROCESSOR}") # x86_64, i386, armv7l, aarch64
message(STATUS "System os name: ${CMAKE_SYSTEM_NAME}") # Linux, Darwin, Windows
message(STATUS "System os version: ${CMAKE_SYSTEM_VERSION}")
message(STATUS)
message(STATUS "C++ compiler id: ${CMAKE_CXX_COMPILER_ID}") # GNU, Clang, AppleClang, MSVC
message(STATUS "C++ compiler version: ${CMAKE_CXX_COMPILER_VERSION}")
message(STATUS)
message(STATUS "C++ Build type: ${CMAKE_BUILD_TYPE}")
message(STATUS "C++ standard version: ${CMAKE_CXX_STANDARD}")
message(STATUS "C++ standard required: ${CMAKE_CXX_STANDARD_REQUIRED}")
message(STATUS "C++ extensions: ${CMAKE_CXX_EXTENSIONS}")
message(STATUS)
message(STATUS "PROJECT_NAME: ${PROJECT_NAME}")
message(STATUS "PROJECT_VERSION: ${PROJECT_VERSION}")
message(STATUS "PROJECT_VERSION_MAJOR: ${PROJECT_VERSION_MAJOR}")
message(STATUS "PROJECT_VERSION_MINOR: ${PROJECT_VERSION_MINOR}")
message(STATUS "PROJECT_VERSION_PATCH: ${PROJECT_VERSION_PATCH}")
message(STATUS "PROJECT_VERSION_TWEAK: ${PROJECT_VERSION_TWEAK}")
message(STATUS "PROJECT_DESCRIPTION: ${PROJECT_DESCRIPTION}")
message(STATUS "PROJECT_HOMEPAGE_URL: ${PROJECT_HOMEPAGE_URL}")
message(STATUS)
message(STATUS "PROJECT_SOURCE_DIR: ${PROJECT_SOURCE_DIR}")
message(STATUS "PROJECT_BINARY_DIR: ${PROJECT_BINARY_DIR}")
message(STATUS "PROJECT_IS_TOP_LEVEL: ${PROJECT_IS_TOP_LEVEL}")
message(STATUS)
message(STATUS "${PROJECT_NAME}_PATH: ${${PROJECT_NAME}_PATH}")
message(STATUS "${PROJECT_NAME}_SOURCE_PATH: ${${PROJECT_NAME}_SOURCE_PATH}")
message(STATUS "${PROJECT_NAME}_INCLUDE_PATH: ${${PROJECT_NAME}_INCLUDE_PATH}")
message(STATUS "${PROJECT_NAME}_TEST_PATH: ${${PROJECT_NAME}_TEST_PATH}")
message(STATUS "${PROJECT_NAME}_MODULE_PATH: ${${PROJECT_NAME}_MODULE_PATH}")
message(STATUS "${PROJECT_NAME}_THIRDPARTY_PATH: ${${PROJECT_NAME}_THIRDPARTY_PATH}\n")
message(STATUS)

add_subdirectory(${${PROJECT_NAME}_THIRDPARTY_PATH})
add_subdirectory(${${PROJECT_NAME}_MODULE_PATH})

set(${PROJECT_NAME}_SOURCE_FILES
  src/main.cpp
)

include(cmake/find_thirdparties.cmake)

include_directories(${GTest_INCLUDE_PATH})

add_executable(MAIN ${${PROJECT_NAME}_SOURCE_FILES})
target_link_libraries(MAIN
  CMAKE_GROUND_EXAMPLE
)
target_compile_options(MAIN PRIVATE
  -Wall -Wextra -Wpedantic -Werror
)
