#
# Find GLAD
#
# Try to find GLAD : Open Asset Import Library.
# This module defines the following variables:
# - GLAD_INCLUDE_DIRS
# - GLAD_LIBRARIES
# - GLAD_FOUND
#
# The following variables can be set as arguments for the module.
# - GLAD_ROOT_DIR : Root library directory of GLAD
#

# Additional modules
include(FindPackageHandleStandardArgs)

if (WIN32)
    # Find include files
    message("Windows is not supported yet")
else()
    # Find include files
    find_path(
            GLAD_INCLUDE_DIR
            NAMES glad/glad.h
            PATHS
            ${CMAKE_CURRENT_LIST_DIR}/glad/include
            DOC "The directory where glad/glad.h resides")
endif()

# Handle REQUIRD argument, define *_FOUND variable
find_package_handle_standard_args(GLAD DEFAULT_MSG GLAD_INCLUDE_DIR)

# Define GLFW_LIBRARIES and GLFW_INCLUDE_DIRS
if (GLAD_FOUND)
    set(GLAD_INCLUDE_DIRS ${GLAD_INCLUDE_DIR})
endif()

# Hide some variables
mark_as_advanced(GLAD_INCLUDE_DIR GLAD_LIBRARY)