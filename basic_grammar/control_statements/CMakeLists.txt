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

# NOT, AND, OR
# EQUAL, STREQUAL
# LESS, GREATER, LESS_EQUAL, GREATER_EQUAL
# MATCHES
# EXISTS, IS_DIRECTORY, IS_REGULAR_FILE
# IS_SYMLINK, IS_ABSOLUTE
# DEFINED, COMMAND, TARGET

# # loops
