# # conditionals
# if
set(BOOL_VARIABLE FALSE)
message(STATUS "\n")

if(BOOL_VARIABLE)
  message(STATUS "BOOL_VARIABLE is true\n")
else()
  message(STATUS "BOOL_VARIABLE is false\n")
endif()

# if-else
set(STRING_VARIABLE 3)
message(STATUS "\n")

if(STRING_VARIABLE EQUAL 1)
  message(STATUS "STRING_VARIABLE is 1\n")
elseif(STRING_VARIABLE EQUAL 2)
  message(STATUS "STRING_VARIABLE is 2\n")
else()
  message(STATUS "STRING_VARIABLE is not 1 and 2\n")
endif()

# loops
# set(STRING_VARIABLES "a" "b" "c" "d" "e")
# foreach(ELEMENT IN LISTS STRING_VARIABLES)
#   message(STATUS "ELEMENT: ${ELEMENT}")
# endforeach()

# foreach(VALUE RANGE 5)
#   message(STATUS "VALUE: ${VALUE}")
# endforeach()

# foreach(VALUE RANGE 2 5 2) # start, stop, step
#   message(STATUS "VALUE: ${VALUE}")
# endforeach()

# NOT, AND, OR
# EQUAL, STREQUAL
# LESS, GREATER, LESS_EQUAL, GREATER_EQUAL
# MATCHES
# EXISTS, IS_DIRECTORY, IS_REGULAR_FILE
# IS_SYMLINK, IS_ABSOLUTE
# DEFINED, COMMAND, TARGET

# # loops
