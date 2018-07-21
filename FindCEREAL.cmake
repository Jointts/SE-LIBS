#
# Find CEREAL
#
# Try to find CEREAL : Open Asset Import Library.
# This module defines the following variables:
# - CEREAL_INCLUDE_DIRS
# - CEREAL_LIBRARIES
# - CEREAL_FOUND
#
# The following variables can be set as arguments for the module.
# - CEREAL_ROOT_DIR : Root library directory of CEREAL
#

# Additional modules
include(FindPackageHandleStandardArgs)

if (WIN32)
    # Find include files
    message("Windows is not supported yet")
else()
    # Find include files
    find_path(
            CEREAL_INCLUDE_DIR
            NAMES cereal/access.hpp
            PATHS
            ${CMAKE_CURRENT_LIST_DIR}/cereal/include
            DOC "The directory where cereal/access.hpp resides")
endif()

# Handle REQUIRD argument, define *_FOUND variable
find_package_handle_standard_args(CEREAL DEFAULT_MSG CEREAL_INCLUDE_DIR)

# Define GLFW_LIBRARIES and GLFW_INCLUDE_DIRS
if (CEREAL_FOUND)
    set(CEREAL_INCLUDE_DIRS ${CEREAL_INCLUDE_DIR})
endif()

# Hide some variables
mark_as_advanced(CEREAL_INCLUDE_DIR CEREAL_LIBRARY)