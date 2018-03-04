#
# Find BULLET
#
# Try to find BULLET : Open Asset Import Library.
# This module defines the following variables:
# - BULLET_INCLUDE_DIRS
# - BULLET_LIBRARIES
# - BULLET_FOUND
#
# The following variables can be set as arguments for the module.
# - BULLET_ROOT_DIR : Root library directory of BULLET
#

# Additional modules
include(FindPackageHandleStandardArgs)

if (WIN32)
    # Find include files
    message("Windows is not supported yet")
else()
    # Find include files
    find_path(
            BULLET_INCLUDE_DIR
            NAMES btBulletCollisionCommon.h
            PATHS
            ${CMAKE_CURRENT_LIST_DIR}/bullet/include/bullet
            DOC "The directory where btBulletCollisionCommon.h resides")

    set(BULLET_LIBRARY_NAMES LinearMath Bullet3Common BulletInverseDynamics BulletCollision BulletDynamics BulletSoftBody)
    set(BULLET_LIBRARY_DIR ${CMAKE_CURRENT_LIST_DIR}/bullet/lib)
    set(BULLET_LIBRARIES "")

    foreach(lib ${BULLET_LIBRARY_NAMES})
        find_library(${lib}_LIBRARY
                NAMES ${lib}
                PATHS
                ${BULLET_LIBRARY_DIR}
                )
        list(APPEND BULLET_LIBRARIES ${${lib}_LIBRARY})
    endforeach(lib)

    # Find library files

endif()

# Handle REQUIRD argument, define *_FOUND variable
find_package_handle_standard_args(BULLET DEFAULT_MSG BULLET_INCLUDE_DIR BULLET_LIBRARIES)

# Define GLFW_LIBRARIES and GLFW_INCLUDE_DIRS
if (BULLET_FOUND)
    set(BULLET_LIBRARIES ${BULLET_LIBRARIES})
    set(BULLET_INCLUDE_DIRS ${BULLET_INCLUDE_DIR})
endif()

# Hide some variables
mark_as_advanced(BULLET_INCLUDE_DIR BULLET_LIBRARY)