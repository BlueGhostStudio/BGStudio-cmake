include(${CMAKE_CURRENT_LIST_DIR}/BGStudio.cmake)

if(ANDROID)
  set(platform "ANDROID")
else()
  set(platform "desktop")
endif()

set(BGS_QML_IMPORT_PATH
    "${CMAKE_INSTALL_PREFIX}/qml/${platform}"
    CACHE STRING "")
set(QML_IMPORT_PATH
    ${BGS_QML_IMPORT_PATH}
    CACHE STRING "")
add_definitions(-DBGS_QML_IMPORT_PATH="${BGS_QML_IMPORT_PATH}")
