#
# Find LIBNOISE
#
# Try to find LIBNOISE : Open Asset Import Library.
# This module defines the following variables:
# - LIBNOISE_INCLUDE_DIRS
# - LIBNOISE_LIBRARIES
# - LIBNOISE_FOUND
#
# The following variables can be set as arguments for the module.
# - LIBNOISE_ROOT_DIR : Root library directory of LIBNOISE
#

# Additional modules
include(FindPackageHandleStandardArgs)

if (WIN32)
    # Find include files
    message("Windows is not supported yet")
else()
    # Find include files
    find_path(
            LIBNOISE_INCLUDE_DIR
            NAMES noise/noise.h
            PATHS
            ${CMAKE_CURRENT_LIST_DIR}/libnoise/include
            DOC "The directory where noise/noise.h resides")

    # Find library files
    find_library(
            LIBNOISE_LIBRARY
            NAMES noise
            PATHS
            ${CMAKE_CURRENT_LIST_DIR}/libnoise/lib
            DOC "The Libnoise library")
endif()

# Handle REQUIRD argument, define *_FOUND variable
find_package_handle_standard_args(LIBNOISE DEFAULT_MSG LIBNOISE_INCLUDE_DIR LIBNOISE_LIBRARY)

# Define GLFW_LIBRARIES and GLFW_INCLUDE_DIRS
if (LIBNOISE_FOUND)
    set(LIBNOISE_LIBRARIES ${LIBNOISE_LIBRARY})
    set(LIBNOISE_INCLUDE_DIRS ${LIBNOISE_INCLUDE_DIR})
endif()

# Hide some variables
mark_as_advanced(LIBNOISE_INCLUDE_DIR LIBNOISE_LIBRARY)