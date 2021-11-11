include(${CMAKE_SOURCE_DIR}/cmake/BGStudio.cmake)

if(ANDROID)
    set(platform "ANDROID")
else()
    set(platform "desktop")
endif()

set(BGS_QML_IMPORT_PATH "${CMAKE_INSTALL_PREFIX}/qml/${platform}" CACHE STRING "")
set(QML_IMPORT_PATH ${BGS_QML_IMPORT_PATH} CACHE STRING "")
