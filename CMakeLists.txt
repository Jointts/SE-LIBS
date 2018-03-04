# Setups all dependencies for NervousEngine

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")

find_package(GLFW REQUIRED)
if (GLFW_FOUND)
    include_directories(${GLFW_INCLUDE_DIRS})
    target_link_libraries (NervousEngine ${GLFW_LIBRARIES})
endif(GLFW_FOUND)

find_package(GLAD REQUIRED)
if (GLAD_FOUND)
    include_directories(${GLAD_INCLUDE_DIRS})
endif(GLAD_FOUND)

find_package(GLM REQUIRED)
if (GLM_FOUND)
    include_directories(${GLM_INCLUDE_DIRS})
endif(GLM_FOUND)

find_package(STB REQUIRED)
if (STB_FOUND)
    include_directories(${STB_INCLUDE_DIRS})
endif(STB_FOUND)

find_package(BULLET REQUIRED)
if (BULLET_FOUND)
    include_directories(${BULLET_INCLUDE_DIRS})
    target_link_libraries (NervousEngine ${BULLET_LIBRARIES})
endif(BULLET_FOUND)

find_package(ASSIMP REQUIRED)
if (ASSIMP_FOUND)
    include_directories(${ASSIMP_INCLUDE_DIRS})
    target_link_libraries (NervousEngine ${ASSIMP_LIBRARIES})
endif(ASSIMP_FOUND)

find_package(FREETYPE REQUIRED)
if (FREETYPE_FOUND)
    include_directories(${FREETYPE_INCLUDE_DIRS})
    target_link_libraries (NervousEngine ${FREETYPE_LIBRARIES})
endif(FREETYPE_FOUND)

find_package(LIBNOISE REQUIRED)
if (LIBNOISE_FOUND)
    include_directories(${LIBNOISE_INCLUDE_DIRS})
    target_link_libraries (NervousEngine ${LIBNOISE_LIBRARIES})
endif(LIBNOISE_FOUND)
