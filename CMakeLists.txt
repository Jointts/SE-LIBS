# Setups all dependencies for SummitEngine

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")

find_package(GLFW REQUIRED)
if (GLFW_FOUND)
    include_directories(SYSTEM ${GLFW_INCLUDE_DIRS})
    target_link_libraries (${LIBRARY_TO_LINK} PUBLIC ${GLFW_LIBRARIES})
endif(GLFW_FOUND)

find_package(GLAD REQUIRED)
if (GLAD_FOUND)
    include_directories(SYSTEM ${GLAD_INCLUDE_DIRS})
endif(GLAD_FOUND)

find_package(CEREAL REQUIRED)
if (CEREAL_FOUND)
    include_directories(SYSTEM ${CEREAL_INCLUDE_DIRS})
endif(CEREAL_FOUND)

find_package(GLM REQUIRED)
if (GLM_FOUND)
    include_directories(SYSTEM ${GLM_INCLUDE_DIRS})
endif(GLM_FOUND)

find_package(STB REQUIRED)
if (STB_FOUND)
    include_directories(SYSTEM ${STB_INCLUDE_DIRS})
endif(STB_FOUND)

find_package(BULLET REQUIRED)
if (BULLET_FOUND)
    include_directories(SYSTEM ${BULLET_INCLUDE_DIRS})
    target_link_libraries (${LIBRARY_TO_LINK} PUBLIC ${BULLET_LIBRARIES})
endif(BULLET_FOUND)

find_package(ASSIMP REQUIRED)
if (ASSIMP_FOUND)
    include_directories(SYSTEM ${ASSIMP_INCLUDE_DIRS})
    target_link_libraries (${LIBRARY_TO_LINK} PUBLIC ${ASSIMP_LIBRARIES})
endif(ASSIMP_FOUND)

find_package(FREETYPE REQUIRED)
if (FREETYPE_FOUND)
    include_directories(SYSTEM ${FREETYPE_INCLUDE_DIRS})
    target_link_libraries (${LIBRARY_TO_LINK} PUBLIC ${FREETYPE_LIBRARIES})
endif(FREETYPE_FOUND)

find_package(LIBNOISE REQUIRED)
if (LIBNOISE_FOUND)
    include_directories(SYSTEM ${LIBNOISE_INCLUDE_DIRS})
    target_link_libraries (${LIBRARY_TO_LINK} PUBLIC ${LIBNOISE_LIBRARIES})
endif(LIBNOISE_FOUND)
