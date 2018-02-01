#                                               -*- cmake -*-
#
#  libnoiseConfig.cmake(.in)
#

# Use the following variables to compile and link against Libnoise:
#  LIBNOISE_FOUND            - True if Libnoise was found on your system
#  LIBNOISE_INCLUDE_DIRS     - List of directories of Libnoise and it's dependencies
#  LIBNOISE_LIBRARIES        - List of libraries to link against Libnoise library
#  LIBNOISE_LIBRARY_DIRS     - List of directories containing Libnoise' libraries

set(LIBNOISE_FOUND 1)
set(LIBNOISE_INCLUDE_DIRS "${CMAKE_CURRENT_LIST_DIR}/../../../include")
set(LIBNOISE_LIBRARY_DIRS "${CMAKE_CURRENT_LIST_DIR}/../../../lib")
set(LIBNOISE_LIBRARIES "noise")
