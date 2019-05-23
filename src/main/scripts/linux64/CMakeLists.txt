cmake_minimum_required (VERSION 2.8.6)
project (yildiz_native_ogre)
 
set(CMAKE_CXX_FLAGS "-O2")
 
include_directories("${CMAKE_SOURCE_DIR}/java/include")
include_directories("${CMAKE_SOURCE_DIR}/java/include/linux")
include_directories("${CMAKE_SOURCE_DIR}/ogre3d/linux64/include/OGRE")
include_directories("${CMAKE_SOURCE_DIR}/ogre3d/linux64/include/OGRE/Overlay")
include_directories("${CMAKE_SOURCE_DIR}/physicsfs/linux64/include")
include_directories("${CMAKE_SOURCE_DIR}/boost/linux64/include")
include_directories(${PHYSFS_INCLUDE_DIR})
 
file(
        GLOB_RECURSE
        source_files
        ${CMAKE_SOURCE_DIR}/../../c++/*.cpp
        ${CMAKE_SOURCE_DIR}/../../c++/*.c
        ${CMAKE_SOURCE_DIR}/../../includes/*.hpp
        ${CMAKE_SOURCE_DIR}/../../includes/*.h
)

add_library(yildizogre SHARED ${source_files})

target_link_libraries(yildizogre ${CMAKE_SOURCE_DIR}/ogre3d/linux64/lib/libOgreMain.so)
target_link_libraries(yildizogre ${CMAKE_SOURCE_DIR}/ogre3d/linux64/lib/libOgreOverlay.so)
target_link_libraries(yildizogre ${CMAKE_SOURCE_DIR}/physicsfs/linux64/lib/libphysfs.so)
target_link_libraries(yildizogre ${CMAKE_SOURCE_DIR}/physicsfs/linux64/libyildizphysfs.so)
