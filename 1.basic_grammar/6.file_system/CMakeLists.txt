# Basic configurations
cmake_minimum_required(VERSION 3.11) # Minimum CMake version required
project(6.FILE_SYSTEM) # Required for CMake to know what project this is

message(STATUS "")
message(STATUS "Started all process in ${PROJECT_NAME} CMakeLists.txt.")
message(STATUS "")

# message(STATUS "Example 1: variables for file system")
# message(STATUS "Example 1.1: variables for file system - CMAKE_SOURCE_DIR")
# message(STATUS "CMAKE_SOURCE_DIR: ${CMAKE_SOURCE_DIR}")
# message(STATUS "")
# message(STATUS "Example 1.2: variables for file system - CMAKE_CURRENT_SOURCE_DIR")
# message(STATUS "CMAKE_CURRENT_SOURCE_DIR: ${CMAKE_CURRENT_SOURCE_DIR}")
# message(STATUS "")
# message(STATUS "Example 1.3: variables for file system - CMAKE_BINARY_DIR")
# message(STATUS "CMAKE_BINARY_DIR: ${CMAKE_BINARY_DIR}")
# message(STATUS "")
# message(STATUS "Example 1.4: variables for file system - CMAKE_CURRENT_BINARY_DIR")
# message(STATUS "CMAKE_CURRENT_BINARY_DIR: ${CMAKE_CURRENT_BINARY_DIR}")
# message(STATUS "")
# message(STATUS "Example 1.5: variables for file system - CMAKE_CURRENT_LIST_DIR")
# message(STATUS "CMAKE_CURRENT_LIST_DIR: ${CMAKE_CURRENT_LIST_DIR}")
# message(STATUS "")
# message(STATUS "Example 1.6: variables for file system - include()")
# message(STATUS "include is the function to include a .cmake file, it is similar to #include in C/C++")
# message(STATUS "include(cmake/example.cmake)")
# include(cmake/example.cmake)

# message(STATUS "Example 2: file")
# message(STATUS "Example 2.1: file - write")
# file(WRITE ${CMAKE_CURRENT_SOURCE_DIR}/file.txt "Hello World!\n")
# message(STATUS "")
# message(STATUS "Example 2.2: file - read")
# file(READ ${CMAKE_CURRENT_SOURCE_DIR}/file.txt CONTENT)
# message(STATUS "Content: ${CONTENT}")
# message(STATUS "")
# message(STATUS "Example 2.3: file - remove")
# file(REMOVE ${CMAKE_CURRENT_SOURCE_DIR}/file.txt)
# message(STATUS "")

# message(STATUS "Example 3: symlink")
# message(STATUS "Example 3.1: symlink - create")
# file(WRITE ${CMAKE_CURRENT_SOURCE_DIR}/file.txt "Hello World!\n")
# file(CREATE_LINK ${CMAKE_CURRENT_SOURCE_DIR}/file.txt ${CMAKE_CURRENT_SOURCE_DIR}/symlink.txt SYMBOLIC)
# message(STATUS "")
# message(STATUS "Example 3.2: symlink - read")
# file(READ_SYMLINK ${CMAKE_CURRENT_SOURCE_DIR}/symlink.txt CONTENT)
# message(STATUS "Content: ${CONTENT}")
# message(STATUS "")
# message(STATUS "Example 3.3: symlink - remove")
# file(REMOVE ${CMAKE_CURRENT_SOURCE_DIR}/file.txt)
# file(REMOVE ${CMAKE_CURRENT_SOURCE_DIR}/symlink.txt)
# message(STATUS "")

# message(STATUS "Example 4: directory")
# message(STATUS "Example 4.1: directory - create")
# file(MAKE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/directory1)
# message(STATUS "")

# message(STATUS "Example 4.2: directory - remove")
# file(REMOVE_RECURSE ${CMAKE_CURRENT_SOURCE_DIR}/directory1)
# message(STATUS "")

# message(STATUS "Example 5: copy")
# message(STATUS "Example 5.1: copy - file")
# file(WRITE ${CMAKE_CURRENT_SOURCE_DIR}/file.txt "Hello World!\n")
# file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/file.txt DESTINATION ${CMAKE_CURRENT_SOURCE_DIR}/destination)
# message(STATUS "")
# message(STATUS "Example 5.2: copy - directory")
# file(MAKE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/directory)
# file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/directory DESTINATION ${CMAKE_CURRENT_SOURCE_DIR}/destination)
# message(STATUS "")
# message(STATUS "Example 5.3: copy - remove")
# file(REMOVE ${CMAKE_CURRENT_SOURCE_DIR}/file.txt)
# file(REMOVE_RECURSE ${CMAKE_CURRENT_SOURCE_DIR}/directory)
# file(REMOVE_RECURSE ${CMAKE_CURRENT_SOURCE_DIR}/destination)
# message(STATUS "")

# message(STATUS "Example 6: glob")
# message(STATUS "Example 6.1: glob - file")
# file(WRITE ${CMAKE_CURRENT_SOURCE_DIR}/file1.txt "Hello World!\n")
# file(WRITE ${CMAKE_CURRENT_SOURCE_DIR}/file2.txt "Hello World!\n")
# file(WRITE ${CMAKE_CURRENT_SOURCE_DIR}/file3.txt "Hello World!\n")
# file(GLOB FILES ${CMAKE_CURRENT_SOURCE_DIR}/*.txt)
# message(STATUS "Files: ${FILES}")
# message(STATUS "")
# message(STATUS "Example 6.2: glob - directory")
# file(MAKE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/directory)
# file(MAKE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/directory/directory1)
# file(MAKE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/directory/directory2)
# file(MAKE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/directory/directory3)
# file(GLOB DIRECTORIES ${CMAKE_CURRENT_SOURCE_DIR}/directory/*)
# message(STATUS "Directories: ${DIRECTORIES}")
# message(STATUS "")
# message(STATUS "Example 6.3: glob - remove")
# file(REMOVE ${CMAKE_CURRENT_SOURCE_DIR}/file1.txt)
# file(REMOVE ${CMAKE_CURRENT_SOURCE_DIR}/file2.txt)
# file(REMOVE ${CMAKE_CURRENT_SOURCE_DIR}/file3.txt)
# file(REMOVE_RECURSE ${CMAKE_CURRENT_SOURCE_DIR}/directory)
# message(STATUS "")
# message(STATUS "Example 7: rename")
# message(STATUS "Example 7.1: rename - file")
# file(WRITE ${CMAKE_CURRENT_SOURCE_DIR}/file.txt "Hello World!")
# file(RENAME ${CMAKE_CURRENT_SOURCE_DIR}/file.txt ${CMAKE_CURRENT_SOURCE_DIR}/file_renamed.txt)
# file(REMOVE ${CMAKE_CURRENT_SOURCE_DIR}/file.txt)
# file(REMOVE ${CMAKE_CURRENT_SOURCE_DIR}/file_renamed.txt)
# message(STATUS "")

# message(STATUS "Example 7.2: rename - directory")
# file(MAKE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/directory)
# file(RENAME ${CMAKE_CURRENT_SOURCE_DIR}/directory ${CMAKE_CURRENT_SOURCE_DIR}/directory_renamed)
# file(REMOVE_RECURSE ${CMAKE_CURRENT_SOURCE_DIR}/directory)
# file(REMOVE_RECURSE ${CMAKE_CURRENT_SOURCE_DIR}/directory_renamed)
# message(STATUS "")

# message(STATUS "Example 8: type checking")

# file(WRITE ${CMAKE_CURRENT_SOURCE_DIR}/directory/file.txt "Hello World!\n")
# file(MAKE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/directory/directory)
# file(CREATE_LINK file.txt ${CMAKE_CURRENT_SOURCE_DIR}/directory/symlink.txt SYMBOLIC)

# set(DATA_LIST
# ${CMAKE_CURRENT_SOURCE_DIR}/directory/file.txt
# ${CMAKE_CURRENT_SOURCE_DIR}/directory/directory
# ${CMAKE_CURRENT_SOURCE_DIR}/directory/symlink.txt
# file.txt
# directory/directory
# directory/symlink.txt)

# message(STATUS "Example 8.1: type checking - directory")

# foreach(DATA ${DATA_LIST})
# if(IS_DIRECTORY ${DATA})
# message(STATUS "${DATA} is a directory")
# endif()
# endforeach()

# message(STATUS "")
# message(STATUS "Example 8.2: type checking - symlink")

# foreach(DATA ${DATA_LIST})
# if(IS_SYMLINK ${DATA})
# message(STATUS "${DATA} is a symlink")
# endif()
# endforeach()

# message(STATUS "")

# message(STATUS "Example 8.3: type checking - absolute path")

# foreach(DATA ${DATA_LIST})
# if(IS_ABSOLUTE ${DATA})
# message(STATUS "${DATA} is an absolute path")
# endif()
# endforeach()

# message(STATUS "")

# message(STATUS "Example 8.4: type checking - newer than")

# foreach(DATA ${DATA_LIST})
# if(${DATA} IS_NEWER_THAN ${CMAKE_CURRENT_SOURCE_DIR}/file.txt)
# message(STATUS "${DATA} is newer than ${CMAKE_CURRENT_SOURCE_DIR}/CMakeLists.txt")
# endif()
# endforeach()

# message(STATUS "")
file(REMOVE_RECURSE ${CMAKE_CURRENT_SOURCE_DIR}/directory)
message(STATUS "")
message(STATUS "Finished all process in ${PROJECT_NAME} CMakeLists.txt.")
message(STATUS "")
