#
# Find STB
#
# Try to find STB : Open Asset Import Library.
# This module defines the following variables:
# - STB_INCLUDE_DIRS
# - STB_LIBRARIES
# - STB_FOUND
#
# The following variables can be set as arguments for the module.
# - STB_ROOT_DIR : Root library directory of STB
#

# Additional modules
include(FindPackageHandleStandardArgs)

if (WIN32)
    # Find include files
    message("Windows is not supported yet")
else()
    # Find include files
    find_path(
            STB_INCLUDE_DIR
            NAMES stb.h
            PATHS
            ${CMAKE_CURRENT_LIST_DIR}/stb
            DOC "The directory where stb.h resides")
endif()

# Handle REQUIRD argument, define *_FOUND variable
find_package_handle_standard_args(STB DEFAULT_MSG STB_INCLUDE_DIR)

# Define GLFW_LIBRARIES and GLFW_INCLUDE_DIRS
if (STB_FOUND)
    set(STB_INCLUDE_DIRS ${STB_INCLUDE_DIR})
endif()

# Hide some variables
mark_as_advanced(STB_INCLUDE_DIR STB_LIBRARY)