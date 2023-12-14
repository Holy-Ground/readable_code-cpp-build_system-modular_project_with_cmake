# Basic configurations
cmake_minimum_required(VERSION 3.11) # Minimum CMake version required
project(3.CONTROL_STATEMENTS) # Required for CMake to know what project this is

message(STATUS "")
message(STATUS "Started all process in ${PROJECT_NAME} CMakeLists.txt.")
message(STATUS "")

# message(STATUS "Example 1: conditionals - if, endif and else")
# set(BOOL_VARIABLE_1 FALSE)
# set(BOOL_VARIABLE_2 FALSE)

# message(STATUS "Example 1.1: conditionals - if, endif and else - if")
# if(${BOOL_VARIABLE_1})
# message(STATUS "The BOOL_VARIABLE_1 is true.")
# endif()

# message(STATUS "")

# message(STATUS "Example 1.2: conditionals - if, endif and else - else")

# if(${BOOL_VARIABLE_1})
# message(STATUS "The BOOL_VARIABLE_1 is true.")
# else()
# message(STATUS "The BOOL_VARIABLE_1 is false.")
# endif()
# message(STATUS "")

# message(STATUS "Example 1.3: conditionals - if, endif and else - elseif")
# if(${BOOL_VARIABLE_1})
# message(STATUS "The BOOL_VARIABLE_1 is true.")
# elseif(${BOOL_VARIABLE_2})
# message(STATUS "The BOOL_VARIABLE_2 is true.")
# else()
# message(STATUS "Both BOOL_VARIABLE_1 and BOOL_VARIABLE_2 are false.")
# endif()
# message(STATUS "")

# message(STATUS "Example 2: conditionals - logical operators")
# message(STATUS "Example 2.1: conditionals - logical operators - NOT")
# message(STATUS "Condition: NOT BOOL_VARIABLE_1")

# if(NOT ${BOOL_VARIABLE_1})
# message(STATUS "The BOOL_VARIABLE_1 is false.")
# endif()
# message(STATUS "")
# message(STATUS "Example 2.2: conditionals - logical operators - AND")
# message(STATUS "Condition: BOOL_VARIABLE_1 AND BOOL_VARIABLE_2")

# if(${BOOL_VARIABLE_1} AND ${BOOL_VARIABLE_2})
# message(STATUS "Both BOOL_VARIABLE_1 and BOOL_VARIABLE_2 are true.")
# endif()
# message(STATUS "")
# message(STATUS "Example 2.3: conditionals - logical operators - OR")
# message(STATUS "Condition: BOOL_VARIABLE_1 OR BOOL_VARIABLE_2")

# if(${BOOL_VARIABLE_1} OR ${BOOL_VARIABLE_2})
# message(STATUS "Either BOOL_VARIABLE_1 or BOOL_VARIABLE_2 is true.")
# endif()
# message(STATUS "")
# message(STATUS "Example 3: conditionals - comparison operators")
# set(NUMBER_VARIABLE_1 1)
# set(NUMBER_VARIABLE_2 2)

# message(STATUS "Example 3.1: conditionals - comparison operators - EQUAL")
# message(STATUS "Condition: NUMBER_VARIABLE_1 == NUMBER_VARIABLE_2")

# if(${NUMBER_VARIABLE_1} EQUAL ${NUMBER_VARIABLE_2})
# message(STATUS "NUMBER_VARIABLE_1 is equal to NUMBER_VARIABLE_2.")
# endif()
# message(STATUS "")

# message(STATUS "Example 3.2: conditionals - comparison operators - NOT EQUAL")
# message(STATUS "Condition: NUMBER_VARIABLE_1 != NUMBER_VARIABLE_2")

# if(NOT(${NUMBER_VARIABLE_1} EQUAL ${NUMBER_VARIABLE_2}))
# message(STATUS "NUMBER_VARIABLE_1 is not equal to NUMBER_VARIABLE_2.")
# endif()
# message(STATUS "")
# message(STATUS "Example 3.3: conditionals - comparison operators - LESS")
# message(STATUS "Condition: NUMBER_VARIABLE_1 < NUMBER_VARIABLE_2")

# if(${NUMBER_VARIABLE_1} LESS ${NUMBER_VARIABLE_2})
# message(STATUS "NUMBER_VARIABLE_1 is less than NUMBER_VARIABLE_2.")
# endif()

# message(STATUS "")

# message(STATUS "Example 3.4: conditionals - comparison operators - GREATER")
# message(STATUS "Condition: NUMBER_VARIABLE_1 > NUMBER_VARIABLE_2")

# if(${NUMBER_VARIABLE_1} GREATER ${NUMBER_VARIABLE_2})
# message(STATUS "NUMBER_VARIABLE_1 is greater than NUMBER_VARIABLE_2.")
# endif()

# message(STATUS "")
# message(STATUS "Example 3.5: conditionals - comparison operators - LESS EQUAL")
# message(STATUS "Condition: NUMBER_VARIABLE_1 <= NUMBER_VARIABLE_2")

# if(${NUMBER_VARIABLE_1} LESS_EQUAL ${NUMBER_VARIABLE_2})
# message(STATUS "NUMBER_VARIABLE_1 is less than or equal to NUMBER_VARIABLE_2.")
# endif()

# message(STATUS "")
# message(STATUS "Example 3.6: conditionals - comparison operators - GREATER EQUAL")
# message(STATUS "Condition: NUMBER_VARIABLE_1 >= NUMBER_VARIABLE_2")

# if(${NUMBER_VARIABLE_1} GREATER_EQUAL ${NUMBER_VARIABLE_2})
# message(STATUS "NUMBER_VARIABLE_1 is greater than or equal to NUMBER_VARIABLE_2.")
# endif()

# message(STATUS "")
# message(STATUS "Example 4: conditionals - string operators")
# set(STRING_VARIABLE_1 "abc.txt")
# set(STRING_VARIABLE_2 "1ab2222")

# message(STATUS "Example 4.1: conditionals - string operators - EQUAL")
# message(STATUS "Condition: STRING_VARIABLE_1 == STRING_VARIABLE_2")

# if(${STRING_VARIABLE_1} STREQUAL ${STRING_VARIABLE_2})
# message(STATUS "STRING_VARIABLE_1 is equal to STRING_VARIABLE_2.")
# endif()

# message(STATUS "")

# message(STATUS "Example 4.2: conditionals - string operators - NOT EQUAL")
# message(STATUS "Condition: STRING_VARIABLE_1 != STRING_VARIABLE_2")

# if(NOT(${STRING_VARIABLE_1} STREQUAL ${STRING_VARIABLE_2}))
# message(STATUS "STRING_VARIABLE_1 is not equal to STRING_VARIABLE_2.")
# endif()

# message(STATUS "")
# message(STATUS "Example 5: conditionals -  MATCHES")
# message(STATUS "Example 5.1: conditionals - MATCHES - starts with")
# message(STATUS "Condition: STRING_VARIABLE_1 starts with 'abc'")

# if(${STRING_VARIABLE_1} MATCHES "^abc")
# message(STATUS "STRING_VARIABLE_1 starts with 'abc'")
# endif()

# message(STATUS "")
# message(STATUS "Example 5.2: conditionals - MATCHES - ends with")
# message(STATUS "Condition: STRING_VARIABLE_1 ends with '.txt'")

# if(${STRING_VARIABLE_1} MATCHES ".txt$")
# message(STATUS "STRING_VARIABLE_1 ends with 'txt'")
# endif()

# message(STATUS "")
# message(STATUS "Example 5.3: conditionals - MATCHES - contains")
# message(STATUS "Condition: STRING_VARIABLE_1 contains 'c1'")

# if(${STRING_VARIABLE_1} MATCHES "c1")
# message(STATUS "STRING_VARIABLE_1 contains 'c1'")
# endif()

# message(STATUS "")

# message(STATUS "Example 5.4: conditionals - MATCHES - specific pattern")
# message(STATUS "Condition: STRING_VARIABLE_1 included in '[a-z]{3}.txt$'")

# if(${STRING_VARIABLE_1} MATCHES "[a-z]{3}.txt")
# message(STATUS "STRING_VARIABLE_1 included in '[a-z]{3}.txt$'")
# endif()

# message(STATUS "")
# message(STATUS "Example 6: conditionals - IN_LIST")
# set(STRING_LIST "a" "abc.txt" "c" "d" "e")
# message(STATUS "STRING_LIST: ${STRING_LIST}")
# message(STATUS "Example 6.1: conditionals - IN_LIST - in list")
# message(STATUS "Condition: STRING_VARIABLE_1 in STRING_LIST")

# if(${STRING_VARIABLE_1} IN_LIST STRING_LIST)
# message(STATUS "STRING_VARIABLE_1 is in STRING_LIST")
# endif()

# message(STATUS "")

# message(STATUS "Example 6.2: conditionals - IN_LIST - not in list")
# message(STATUS "Condition: STRING_VARIABLE_2 in STRING_LIST")

# if(NOT(${STRING_VARIABLE_2} IN_LIST STRING_LIST))
# message(STATUS "STRING_VARIABLE_2 is not in STRING_LIST")
# endif()

# message(STATUS "")

# message(STATUS "Example 7: conditionals - DEFINED")
# message(STATUS "Example 7.1: conditionals - DEFINED - defined")
# message(STATUS "Condition: STRING_VARIABLE_1 is defined")

# if(DEFINED STRING_VARIABLE_1)
# message(STATUS "STRING_VARIABLE_1 is defined")
# endif()

# message(STATUS "")

# message(STATUS "Example 7.2: conditionals - DEFINED - not defined")
# message(STATUS "Condition: STRING_VARIABLE_3 is defined")

# if(NOT(DEFINED STRING_VARIABLE_3))
# message(STATUS "STRING_VARIABLE_3 is not defined")

# endif()

# message(STATUS "")
# message(STATUS "Example 7.3: conditionals - DEFINED - empty")
# message(STATUS "Condition: STRING_VARIABLE_3 is empty")
# set(STRING_VARIABLE_3)

# if(STRING_VARIABLE_3)
# message(STATUS "STRING_VARIABLE_3 is not empty")
# else()
# message(STATUS "STRING_VARIABLE_3 is empty")
# endif()

# message(STATUS "")

# message(STATUS "Example 8: conditionals - COMMAND")
# message(STATUS "Example 8.1: conditionals - COMMAND - command exists")
# message(STATUS "Condition: COMMAND project exists")

# if(COMMAND project)
# message(STATUS "COMMAND project exists")
# endif()

# message(STATUS "")

# message(STATUS "Example 8.2: conditionals - COMMAND - command not exists")
# message(STATUS "Condition: COMMAND project1 exists")

# if(NOT(COMMAND project1))
# message(STATUS "COMMAND project1 not exists")
# endif()

# message(STATUS "")
# message(STATUS "Example 9: conditionals - TARGET")
# message(STATUS "Example 9.1: conditionals - TARGET - target exists")
# message(STATUS "Condition: TARGET project exists")

# if(TARGET project)
# message(STATUS "TARGET project exists")
# endif()

# message(STATUS "")

# message(STATUS "Example 9.2: conditionals - TARGET - target not exists")
# message(STATUS "Condition: TARGET project1 exists")

# if(NOT(TARGET project1))
# message(STATUS "TARGET project1 not exists")
# endif()

# message(STATUS "")
# message(STATUS "Example 10: loops")
# message(STATUS "Example 10.1: loops - foreach")
# set(STRING_LIST "a" "b" "c" "d" "e")
# message(STATUS "STRING_LIST: ${STRING_LIST}")

# foreach(ELEMENT ${STRING_LIST})
# message(STATUS "ELEMENT: ${ELEMENT}")
# endforeach()

# message(STATUS "")

# message(STATUS "Example 10.2: loops - foreach - range")

# foreach(VALUE RANGE 5)
# message(STATUS "VALUE: ${VALUE}")
# endforeach()

# message(STATUS "")

# message(STATUS "Example 10.3: loops - foreach - range with step")

# foreach(VALUE RANGE 2 5 2)
# message(STATUS "VALUE: ${VALUE}")
# endforeach()

# message(STATUS "")

# message(STATUS "Example 10.4: loops - while")

# set(INDEX 0)

# while(${INDEX} LESS 5)
# message(STATUS "INDEX: ${INDEX}")
# math(EXPR INDEX "${INDEX} + 1")
# endwhile()

# message(STATUS "")
message(STATUS "")
message(STATUS "Finished all process in ${PROJECT_NAME} CMakeLists.txt.")
message(STATUS "")
