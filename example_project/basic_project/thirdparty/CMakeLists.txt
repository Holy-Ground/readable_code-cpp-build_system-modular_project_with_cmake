message(STATUS "Start Building thirdparties.")

file(GLOB ELEMENTS "*")

foreach(ELEMENT ${ELEMENTS})
  if(IS_DIRECTORY ${ELEMENT} AND EXISTS ${ELEMENT}/CMakeLists.txt)
    add_subdirectory(${ELEMENT})
  endif()
endforeach()

message(STATUS "Finish Building thirdparties.\n")
