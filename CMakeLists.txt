# Basic configurations
cmake_minimum_required(VERSION 3.11) # Minimum CMake version required
project(MODULAR_PROJECT_WITH_CMAKE) # Required for CMake to know what project this is

# add_subdirectory(basic_grammar/message)
# add_subdirectory(basic_grammar/variables)
# add_subdirectory(basic_grammar/control_statements)

add_subdirectory(example_project)

# 1. 기초 문법
# 1.1. 메시지 출력
# 1.2. 변수
# 1.3. 제어문

# 2. 외부 종속성 관리
# 2.1. ExternalProject_Add
# 2.2. FetchContent
# 2.3. ExternalProject를 사용해서 GTest 추가하기
