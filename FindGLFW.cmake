#
# Find GLFW
#
# Try to find GLFW : Open Asset Import Library.
# This module defines the following variables:
# - GLFW_INCLUDE_DIRS
# - GLFW_LIBRARIES
# - GLFW_FOUND
#
# The following variables can be set as arguments for the module.
# - GLFW_ROOT_DIR : Root library directory of GLFW
#

# Additional modules
include(FindPackageHandleStandardArgs)

find_package(Threads REQUIRED)

find_package(X11 REQUIRED)

if (WIN32)
    # Find include files
    message("Windows is not supported yet")
else()
    # Find include files
    find_path(
            GLFW_INCLUDE_DIR
            NAMES GLFW/glfw3.h
            PATHS
            ${CMAKE_CURRENT_LIST_DIR}/glfw/include
            DOC "The directory where GLFW/glfw3.h resides")

    # Find library files
    find_library(
            GLFW_LIBRARY
            NAMES glfw3
            PATHS
            ${CMAKE_CURRENT_LIST_DIR}/glfw/lib
            DOC "The GLFW library")
endif()

list(APPEND X11_LIBRARY ${X11_Xrandr_LIB} ${X11_Xxf86vm_LIB} ${X11_Xcursor_LIB} ${X11_Xinerama_LIB} ${X11_Xi_LIB} ${X11_LIBRARIES})

# Handle REQUIRD argument, define *_FOUND variable
find_package_handle_standard_args(GLFW DEFAULT_MSG GLFW_INCLUDE_DIR GLFW_LIBRARY CMAKE_THREAD_LIBS_INIT X11_LIBRARY)

# Define GLFW_LIBRARIES and GLFW_INCLUDE_DIRS
if (GLFW_FOUND)
    set(GLFW_LIBRARIES ${GLFW_LIBRARY} ${CMAKE_THREAD_LIBS_INIT} ${X11_LIBRARY} ${CMAKE_DL_LIBS})
    set(GLFW_INCLUDE_DIRS ${GLFW_INCLUDE_DIR})
endif()

# Hide some variables
mark_as_advanced(GLFW_INCLUDE_DIR GLFW_LIBRARY)