#
# Find FREETYPE
#
# Try to find FREETYPE : Open Asset Import Library.
# This module defines the following variables:
# - FREETYPE_INCLUDE_DIRS
# - FREETYPE_LIBRARIES
# - FREETYPE_FOUND
#
# The following variables can be set as arguments for the module.
# - FREETYPE_ROOT_DIR : Root library directory of FREETYPE
#

# Additional modules
include(FindPackageHandleStandardArgs)

if (WIN32)
    # Find include files
    message("Windows is not supported yet")
else()
    # Find include files
    find_path(
            FREETYPE_INCLUDE_DIR
            NAMES ft2build.h
            PATHS
            ${CMAKE_CURRENT_LIST_DIR}/freetype/include
            DOC "The directory where ft2build.h resides")

    find_path(
            FREETYPE2_INCLUDE_DIR
            NAMES freetype/freetype.h
            PATHS
            ${CMAKE_CURRENT_LIST_DIR}/freetype/include/freetype2
            DOC "The directory where freetype.h resides")

    # Find library files
    find_library(
            FREETYPE_LIBRARY
            NAMES freetype
            PATHS
            ${CMAKE_CURRENT_LIST_DIR}/freetype/lib
            DOC "The Freetype library")
endif()

# Handle REQUIRD argument, define *_FOUND variable
find_package_handle_standard_args(FREETYPE DEFAULT_MSG FREETYPE_INCLUDE_DIR FREETYPE2_INCLUDE_DIR FREETYPE_LIBRARY)

# Define GLFW_LIBRARIES and GLFW_INCLUDE_DIRS
if (FREETYPE_FOUND)
    set(FREETYPE_LIBRARIES ${FREETYPE_LIBRARY})
    set(FREETYPE_INCLUDE_DIRS ${FREETYPE_INCLUDE_DIR} ${FREETYPE2_INCLUDE_DIR})
endif()

# Hide some variables
mark_as_advanced(FREETYPE_INCLUDE_DIR FREETYPE_LIBRARY)