#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "FFTUtils::fftutils" for configuration ""
set_property(TARGET FFTUtils::fftutils APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(FFTUtils::fftutils PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libfftutils.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS FFTUtils::fftutils )
list(APPEND _IMPORT_CHECK_FILES_FOR_FFTUtils::fftutils "${_IMPORT_PREFIX}/lib/libfftutils.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
