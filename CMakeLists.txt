cmake_minimum_required(VERSION 3.16)
project(ProjectSync VERSION 1.0)
find_package(Qt6 6.2 COMPONENTS Quick Gui REQUIRED)
qt_standard_project_setup(REQUIRES 6.5)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON)
include_directories(${CMAKE_SOURCE_DIR}/src/sync_service)
set(SOURCES
    src/main.cpp
    src/resources.qrc
    src/QObjects/AddSyncModule.h
    src/QObjects/MainWindow.h
)
set(SYNCSERVICE_SOURCE ${CMAKE_SOURCE_DIR}/src/sync_service/SyncService.cpp)
set(SYNCSERVICE_HEADER ${CMAKE_SOURCE_DIR}/src/sync_service/SyncService.h)
list(APPEND SOURCES ${SYNCSERVICE_SOURCE})
list(APPEND SOURCES ${SYNCSERVICE_HEADER})
qt_add_executable(app ${SOURCES})
target_link_libraries(app PRIVATE Qt6::Gui Qt6::Quick)
