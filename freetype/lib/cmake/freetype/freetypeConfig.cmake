#                                               -*- cmake -*-
#
#  freetypeConfig.cmake(.in)
#

# Use the following variables to compile and link against Freetype:
#  FREETYPE_FOUND            - True if Freetype was found on your system
#  FREETYPE_INCLUDE_DIRS     - List of directories of Freetype and it's dependencies
#  FREETYPE_LIBRARIES        - List of libraries to link against Freetype library
#  FREETYPE_LIBRARY_DIRS     - List of directories containing Freetype' libraries

set(FREETYPE_FOUND 1)
set(FREETYPE_INCLUDE_DIRS
        "${CMAKE_CURRENT_LIST_DIR}/../../../include"
        "${CMAKE_CURRENT_LIST_DIR}/../../../include/freetype2/"
        )
set(FREETYPE_LIBRARY_DIRS "${CMAKE_CURRENT_LIST_DIR}/../../../lib")
set(FREETYPE_LIBRARIES "freetype")
