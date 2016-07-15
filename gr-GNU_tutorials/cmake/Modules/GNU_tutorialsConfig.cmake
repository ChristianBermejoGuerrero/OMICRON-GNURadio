INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_GNU_TUTORIALS GNU_tutorials)

FIND_PATH(
    GNU_TUTORIALS_INCLUDE_DIRS
    NAMES GNU_tutorials/api.h
    HINTS $ENV{GNU_TUTORIALS_DIR}/include
        ${PC_GNU_TUTORIALS_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    GNU_TUTORIALS_LIBRARIES
    NAMES gnuradio-GNU_tutorials
    HINTS $ENV{GNU_TUTORIALS_DIR}/lib
        ${PC_GNU_TUTORIALS_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GNU_TUTORIALS DEFAULT_MSG GNU_TUTORIALS_LIBRARIES GNU_TUTORIALS_INCLUDE_DIRS)
MARK_AS_ADVANCED(GNU_TUTORIALS_LIBRARIES GNU_TUTORIALS_INCLUDE_DIRS)
