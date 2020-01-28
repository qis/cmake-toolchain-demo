cmake_minimum_required(VERSION 3.16 FATAL_ERROR)

#cmake_policy(VERSION 3.9)
#cmake_policy(VERSION 3.15)

#cmake_policy(SET CMP0091 NEW)
#cmake_policy(SET CMP0069 NEW)

if(WIN32)
  project(cmake-toolchain-demo LANGUAGES ASM_MASM C CXX)
  add_executable(${PROJECT_NAME} main.asm main.hpp main.cpp main.manifest main.rc)
else()
  project(cmake-toolchain-demo LANGUAGES C CXX)
  add_executable(${PROJECT_NAME} main.hpp main.cpp)
endif()

#target_precompile_headers(${PROJECT_NAME} PRIVATE main.hpp)
