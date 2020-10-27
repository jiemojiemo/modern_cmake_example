cmake_minimum_required(VERSION 3.10)

project(example_exec)

set(FFTUtils_DIR ${CMAKE_CURRENT_SOURCE_DIR}/fftutils/lib/cmake)
find_package(FFTUtils)

add_executable(example_exec main.cpp)
target_link_libraries(example_exec PRIVATE FFTUtils::fftutils)