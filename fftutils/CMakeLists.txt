cmake_minimum_required(VERSION 3.10)

project(libfftutils
        VERSION 1.0.0
        LANGUAGES C CXX
        )

add_library(fftutils src/fftutils.cpp src/helper.cpp)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
find_package(FFTW)

target_include_directories(fftutils
        PUBLIC
            $<INSTALL_INTERFACE:include>
            $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        PRIVATE
            ${CMAKE_CURRENT_SOURCE_DIR}/src
        )

target_compile_options(fftutils PRIVATE -Werror)
target_compile_features(fftutils PRIVATE cxx_std_11)
target_link_libraries(fftutils PRIVATE FFTW::Double)

#################################################################
# Installation
include(GNUInstallDirs)
install(TARGETS fftutils
        EXPORT fftutils-targets
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR})

install(DIRECTORY include/
        DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

# Export the targets to a script
install(EXPORT fftutils-targets
        FILE
            FFTUtilsTargets.cmake
        NAMESPACE
            FFTUtils::
        DESTINATION
            "lib/cmake/"
        )

install(FILES
        ${CMAKE_CURRENT_SOURCE_DIR}/cmake/FFTUtilsConfig.cmake
        ${CMAKE_CURRENT_SOURCE_DIR}/cmake/FindFFTW.cmake
        DESTINATION "lib/cmake/")
