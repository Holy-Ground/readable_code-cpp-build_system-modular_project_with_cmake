set(TEST_TYPE UNIT)

set(${PROJECT_NAME}_${TEST_TYPE}_TEST_SOURCES
  utils
)
include_directories(
  ${${PROJECT_NAME}_INCLUDE_PATH}
)

add_executable(${PROJECT_NAME}_${TEST_TYPE}_TESTS
  ${${PROJECT_NAME}_${TEST_TYPE}_TEST_SOURCES}.cpp
  main.cpp
)
target_link_libraries(${PROJECT_NAME}_${TEST_TYPE}_TESTS
  GTest::gtest
  ${PROJECT_NAME}
)

add_test(NAME ${PROJECT_NAME}_${TEST_TYPE}_Test COMMAND
  ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}_${TEST_TYPE}_TESTS)

set(SLASH "/")
set(UNDER_BAR "_")

foreach(TEST_FILE_NAME ${${PROJECT_NAME}_${TEST_TYPE}_TEST_SRCS})
  string(REPLACE ${SLASH} ${UNDER_BAR} TEST_NAME ${TEST_FILE_NAME})
  set(TEST_NAME ${PROJECT_NAME}_${TEST_NAME})

  add_executable(${TEST_NAME}
    main.cpp
    ${TEST_FILE_NAME}.cpp
  )
  target_link_libraries(${TEST_NAME}
    GTest::gtest
    ${PROJECT_NAME}
  )
  add_test(${TEST_NAME}
    ${TEST_NAME}
    --gtest_color=yes
  )
endforeach()
