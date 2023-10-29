# Message type STATUS
message(STATUS)
message(STATUS "Message type STATUS")

# Message type WARNING
# WARNING message don't stop the configurationh process
# message(STATUS "Message type WARNING")
# message(WARNING "This warning is for all")

# Message type AUTHOR_WARNING
# AUTHOR_WARNING message don't stop the configurationh process
# message(STATUS "Message type AUTHOR_WARNING")
# set(CMAKE_SUPPRESS_DEVELOPER_WARNINGS OFF CACHE INTERNAL "Suppress Developer Warnings")
# message(AUTHOR_WARNING "This warning is for developers only!")

# Message type FATAL_ERROR
# FATAL_ERROR message stop the configurationh process
# message(STATUS "Message type FATAL_ERROR")
# message(FATAL_ERROR "Fatal error during configuration!")

# Message type SEND_ERROR
# SEND_ERROR message don't stop the configuration process
# But it will stop the generation process
# message(STATUS "Message type SEND_ERROR")

# message(SEND_ERROR "Error during configuration!")
# Message type DEPRECATION
# DEPRECATION message don't stop the configuration process
# message(STATUS "Message type DEPRECATION")
# message(DEPRECATION "This is deprecated!")
message(STATUS "Finished all process in basic_grammar/message CMakeLists.txt.")
message(STATUS)
