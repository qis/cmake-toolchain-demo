cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

#cmake_policy(VERSION 3.9)
#cmake_policy(VERSION 3.15)

#cmake_policy(SET CMP0091 NEW)
#cmake_policy(SET CMP0069 NEW)

project(cmake-toolchain-demo LANGUAGES CXX)

add_executable(${PROJECT_NAME} main.hpp main.cpp main.manifest main.rc)

#target_precompile_headers(${PROJECT_NAME} PRIVATE main.hpp)

#print_cached_variables()
