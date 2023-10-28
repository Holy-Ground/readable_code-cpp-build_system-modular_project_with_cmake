cmake_minimum_required(VERSION 3.11)

set(PACKAGE_NAME MODULAR_PROJECT_WITH_CMAKE)
set(PACKAGE_VERSION 1.0.0)

project(${PACKAGE_NAME} VERSION ${PACKAGE_VERSION} LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)

set(${PACKAGE_NAME}_PATH ${CMAKE_CURRENT_SOURCE_DIR})

message(STATUS "PACKAGE_NAME: ${PACKAGE_NAME}")
message(STATUS "PACKAGE_VERSION: ${PACKAGE_VERSION}")
message(STATUS "${PACKAGE_NAME}_PATH: ${${PACKAGE_NAME}_PATH}")

# example for adding library
# set(${PACKAGE_NAME}_SOURCE_FILES
# example_source1.cpp
# example_source2.cpp
# ...
# )
# add_library(${PACKAGE_NAME} STATIC
# ${${LIBRARY_NAME}_SOURCE_FILES}
# )
# target_include_directories(${PACKAGE_NAME} PUBLIC
# ${${PACKAGE_NAME}_INCLUDE_PATH}
# )
# target_compile_options(${PACKAGE_NAME} PRIVATE
# -Wall -Wextra -Wpedantic -Werror
# )

# example for adding executable
# target_link_libraries(MODULAR_PROJECT_WITH_CMAKE_MAIN
# target_library_1
# target_library_2
# ...
# )
# add_executable(MODULAR_PROJECT_WITH_CMAKE_MAIN src/main.cpp)
# target_compile_options(MODULAR_PROJECT_WITH_CMAKE_MAIN PRIVATE
# -Wall -Wextra -Wpedantic -Werror
# )
