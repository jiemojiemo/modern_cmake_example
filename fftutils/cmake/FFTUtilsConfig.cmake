get_filename_component(FFTUtils_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
include(CMakeFindDependencyMacro)

list(APPEND CMAKE_MODULE_PATH ${FFTUtils_CMAKE_DIR})

find_dependency(FFTW)
include("${CMAKE_CURRENT_LIST_DIR}/FFTUtilsTargets.cmake")
