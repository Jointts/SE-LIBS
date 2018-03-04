#
# Find GLM
#
# Try to find GLM : Open Asset Import Library.
# This module defines the following variables:
# - GLM_INCLUDE_DIRS
# - GLM_LIBRARIES
# - GLM_FOUND
#
# The following variables can be set as arguments for the module.
# - GLM_ROOT_DIR : Root library directory of GLM
#

# Additional modules
include(FindPackageHandleStandardArgs)

if (WIN32)
    # Find include files
    message("Windows is not supported yet")
else()
    # Find include files
    find_path(
            GLM_INCLUDE_DIR
            NAMES glm/common.hpp
            PATHS
            ${CMAKE_CURRENT_LIST_DIR}/glm/include
            DOC "The directory where glm/common.h resides")
endif()

# Handle REQUIRD argument, define *_FOUND variable
find_package_handle_standard_args(GLM DEFAULT_MSG GLM_INCLUDE_DIR)

# Define GLFW_LIBRARIES and GLFW_INCLUDE_DIRS
if (GLM_FOUND)
    set(GLM_INCLUDE_DIRS ${GLM_INCLUDE_DIR})
endif()

# Hide some variables
mark_as_advanced(GLM_INCLUDE_DIR)