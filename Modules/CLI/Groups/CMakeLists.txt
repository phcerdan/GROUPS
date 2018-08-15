#-----------------------------------------------------------------------------
set(MODULE_NAME Groups)

#-----------------------------------------------------------------------------

# SlicerExecutionModel
find_package(SlicerExecutionModel REQUIRED)
include(${SlicerExecutionModel_USE_FILE})

# ITK
#set(${PROJECT_NAME}_ITK_COMPONENTS
#  ITKIOImageBase
#  ITKSmoothing
#  )
#find_package(ITK 4.6 COMPONENTS ${${PROJECT_NAME}_ITK_COMPONENTS} REQUIRED)
#set(ITK_NO_IO_FACTORY_REGISTER_MANAGER 1) # See Libs/ITKFactoryRegistration/CMakeLists.txt
#include(${ITK_USE_FILE})

message(STATUS "**** CLAPACK_AT_MODULE :${CLAPACK_INCLUDE_DIRS}")
#-----------------------------------------------------------------------------
set(MODULE_INCLUDE_DIRECTORIES
  ${CLAPACK_INCLUDE_DIRS}
  )

set(MODULE_SRCS
  GroupwiseRegistration.cpp
  )

message(STATUS "********* CLAPACK_LIBRARIES: ${CLAPACK_LIBRARIES}")
set(MODULE_TARGET_LIBRARIES
#  ${ITK_LIBRARIES}
  ${CLAPACK_LIBRARIES}
  Mesh
  ${VTK_LIBRARIES}
  )

#-----------------------------------------------------------------------------
SEMMacroBuildCLI(
  NAME ${MODULE_NAME}
  TARGET_LIBRARIES ${MODULE_TARGET_LIBRARIES}
  INCLUDE_DIRECTORIES ${MODULE_INCLUDE_DIRECTORIES}
  ADDITIONAL_SRCS ${MODULE_SRCS}
  EXECUTABLE_ONLY
  )

#-----------------------------------------------------------------------------
if(BUILD_TESTING)
#  add_subdirectory(Testing)
endif()
