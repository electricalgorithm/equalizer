#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "kfr_dsp_neon64" for configuration "Release"
set_property(TARGET kfr_dsp_neon64 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(kfr_dsp_neon64 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libkfr_dsp_neon64.a"
  )

list(APPEND _cmake_import_check_targets kfr_dsp_neon64 )
list(APPEND _cmake_import_check_files_for_kfr_dsp_neon64 "${_IMPORT_PREFIX}/lib/libkfr_dsp_neon64.a" )

# Import target "kfr_io" for configuration "Release"
set_property(TARGET kfr_io APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(kfr_io PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libkfr_io.a"
  )

list(APPEND _cmake_import_check_targets kfr_io )
list(APPEND _cmake_import_check_files_for_kfr_io "${_IMPORT_PREFIX}/lib/libkfr_io.a" )

# Import target "kfr_dft_neon64" for configuration "Release"
set_property(TARGET kfr_dft_neon64 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(kfr_dft_neon64 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libkfr_dft_neon64.a"
  )

list(APPEND _cmake_import_check_targets kfr_dft_neon64 )
list(APPEND _cmake_import_check_files_for_kfr_dft_neon64 "${_IMPORT_PREFIX}/lib/libkfr_dft_neon64.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
