# Setups all dependencies for NervousEngine


FIND_PACKAGE(PkgConfig REQUIRED)

# GLFW3 search path
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} ${CMAKE_CURRENT_LIST_DIR}/glfw/)
# GLM search path
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} ${CMAKE_CURRENT_LIST_DIR}/glm/)
# BULLET search path
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} ${CMAKE_CURRENT_LIST_DIR}/bullet/)
# ASSIMP search path
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} ${CMAKE_CURRENT_LIST_DIR}/assimp/)
# FREETYPE search path
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} ${CMAKE_CURRENT_LIST_DIR}/freetype/)
# LIBNOISE search path
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} ${CMAKE_CURRENT_LIST_DIR}/libnoise/)

find_package(glfw3 REQUIRED)
if (glfw3_FOUND)
    include_directories(${GLFW3_INCLUDE_DIRS})
    target_link_libraries (NervousEngine ${GLFW3_LIBRARIES})
endif(glfw3_FOUND)

find_package(glm REQUIRED)
if (glm_FOUND)
    include_directories(${GLM_INCLUDE_DIRS})
    target_link_libraries (NervousEngine ${GLM_LIBRARIES})
endif(glm_FOUND)

find_package(Bullet REQUIRED)
if (Bullet_FOUND)
    include_directories(${BULLET_INCLUDE_DIRS})
    target_link_libraries (NervousEngine ${BULLET_LIBRARIES})
endif(Bullet_FOUND)

find_package(assimp REQUIRED)
if (assimp_FOUND)
    message(${ASSIMP_LIBRARY_DIRS})
    message(${ASSIMP_LIBRARIES})
    include_directories(${ASSIMP_INCLUDE_DIRS})
#    target_link_libraries (NervousEngine ${ASSIMP_LIBRARIES})
endif(assimp_FOUND)

find_package(freetype REQUIRED)
if (freetype_FOUND)
    include_directories(${FREETYPE_INCLUDE_DIRS})
    target_link_libraries (NervousEngine ${FREETYPE_LIBRARIES})
endif(freetype_FOUND)

find_package(libnoise REQUIRED)
if (libnoise_FOUND)
    include_directories(${LIBNOISE_INCLUDE_DIRS})
#    target_link_libraries (NervousEngine ${LIBNOISE_LIBRARIES})
endif(libnoise_FOUND)

# GLAD, header only library
include_directories(${CMAKE_CURRENT_LIST_DIR}/glad/include)
# STB, header only library
include_directories(${CMAKE_CURRENT_LIST_DIR}/stb/)

# NB!
# freetype-config.cmake, libnoise-config.cmake -> Made manually as build system did not generate them
