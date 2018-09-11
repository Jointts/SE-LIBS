#
# Find SOL
#
# Try to find SOL : Open Asset Import Library.
# This module defines the following variables:
# - SOL_INCLUDE_DIRS
# - SOL_LIBRARIES
# - SOL_FOUND
#
# The following variables can be set as arguments for the module.
# - SOL_ROOT_DIR : Root library directory of SOL
#

# Additional modules
include(FindPackageHandleStandardArgs)

if (WIN32)
    # Find include files
    message("Windows is not supported yet")
else()
    # Find include files
    find_path(
            SOL_INCLUDE_DIR
            NAMES sol.hpp
            PATHS
            ${CMAKE_CURRENT_LIST_DIR}/sol
            DOC "The directory where sol.hpp resides")
endif()

# Handle REQUIRD argument, define *_FOUND variable
find_package_handle_standard_args(SOL DEFAULT_MSG SOL_INCLUDE_DIR)

# Define GLFW_LIBRARIES and GLFW_INCLUDE_DIRS
if (SOL_FOUND)
    set(SOL_INCLUDE_DIRS ${SOL_INCLUDE_DIR})
endif()