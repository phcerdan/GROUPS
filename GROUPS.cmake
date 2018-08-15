cmake_minimum_required(VERSION 2.8)

find_package(CLAPACK )
find_package(CLAPACK REQUIRED)


include_directories(${CLAPACK_INCLUDE_DIRS})

find_package(MeshLib REQUIRED)

include_directories(Mesh GroupwiseRegistration)
include_directories( ${CMAKE_SOURCE_DIR} ${CMAKE_BINARY_DIR} )
