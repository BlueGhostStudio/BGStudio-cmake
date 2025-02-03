include(GNUInstallDirs)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY
    ${PROJECT_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY
    ${PROJECT_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY
    ${PROJECT_BINARY_DIR}/${CMAKE_INSTALL_BINDIR})

set(BGMRPC_REMOTE
    "${CMAKE_INSTALL_PREFIX}/BGMRPC${REMOTE_DIR}"
    CACHE STRING "")
set(BGMRPC_CLIENT
    "${CMAKE_INSTALL_PREFIX}/BGMRPC${CLIENT_DIR}"
    CACHE STRING "")

add_definitions(-DREMOTEPATH="${BGMRPC_REMOTE}")
add_definitions(-DCLIENTPATH="${BGMRPC_REMOTE}")
add_definitions(
  -DDEFAULT_ETC_DIR="${BGMRPC_REMOTE}/${CMAKE_INSTALL_DATADIR}/etc")

# 检查变量是否存在
if(NOT DEFINED BGMRPC_SRC_DIR)
    message(FATAL_ERROR "BGMRPC_SRC_DIR is not defined. Please set BGMRPC_SRC_DIR before running CMake.")
endif()

# 如果存在，设置路径变量
set(BGMRPCCommon_includeDir
    ${BGMRPC_SRC_DIR}/BGMRPCCommon
    CACHE PATH "Path to BGMRPCCommon include directory")

set(BGMRPCObjectInterface_includeDir
    ${BGMRPC_SRC_DIR}/BGMRPCObjectInterface
    CACHE PATH "Path to BGMRPCObjectInterface include directory")
