cmake_minimum_required(VERSION 3.16 FATAL_ERROR)
project(cmake-toolchain-demo VERSION 1.0.0 LANGUAGES CXX)

add_executable(${PROJECT_NAME} main.hpp main.cpp main.manifest main.rc)

#target_precompile_headers(${PROJECT_NAME} PRIVATE main.hpp)

print_cached_variables()
