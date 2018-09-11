#
# Find LUAJIT
#
# Try to find LUAJIT : Open Asset Import Library.
# This module defines the following variables:
# - LUAJIT_INCLUDE_DIRS
# - LUAJIT_LIBRARIES
# - LUAJIT_FOUND
#
# The following variables can be set as arguments for the module.
# - LUAJIT_ROOT_DIR : Root library directory of LUAJIT
#

# Additional modules
include(FindPackageHandleStandardArgs)

if (WIN32)
    # Find include files
    message("Windows is not supported yet")
else()
    # Find include files
    find_path(
            LUAJIT_INCLUDE_DIR
            NAMES lua.h
            PATHS
            ${CMAKE_CURRENT_LIST_DIR}/luajit/include/
            DOC "The directory where lua.hpp resides")

    # Find library files
    find_library(
            LUAJIT_LIBRARY
            NAMES luajit
            PATHS
            ${CMAKE_CURRENT_LIST_DIR}/luajit/lib
            DOC "The LuaJIT library")
endif()

# Handle REQUIRD argument, define *_FOUND variable
find_package_handle_standard_args(LUAJIT DEFAULT_MSG LUAJIT_INCLUDE_DIR LUAJIT_LIBRARY)

# Define GLFW_LIBRARIES and GLFW_INCLUDE_DIRS
if (LUAJIT_FOUND)
    set(LUAJIT_LIBRARIES ${LUAJIT_LIBRARY})
    set(LUAJIT_INCLUDE_DIRS ${LUAJIT_INCLUDE_DIR})
endif()

# Hide some variables
mark_as_advanced(LUAJIT_INCLUDE_DIR LUAJIT_LIBRARY)