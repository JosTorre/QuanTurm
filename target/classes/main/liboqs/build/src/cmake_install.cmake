# Install script for directory: /home/ze/PQSLightChain/src/main/liboqs/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboqs.so.0.7.2-dev"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboqs.so.0"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/ze/PQSLightChain/src/main/liboqs/build/lib/liboqs.so.0.7.2-dev"
    "/home/ze/PQSLightChain/src/main/liboqs/build/lib/liboqs.so.0"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboqs.so.0.7.2-dev"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboqs.so.0"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboqs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboqs.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboqs.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/ze/PQSLightChain/src/main/liboqs/build/lib/liboqs.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboqs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboqs.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboqs.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/liboqs/liboqsConfig.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/liboqs/liboqsConfig.cmake"
         "/home/ze/PQSLightChain/src/main/liboqs/build/src/CMakeFiles/Export/lib/cmake/liboqs/liboqsConfig.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/liboqs/liboqsConfig-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/liboqs/liboqsConfig.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/liboqs" TYPE FILE FILES "/home/ze/PQSLightChain/src/main/liboqs/build/src/CMakeFiles/Export/lib/cmake/liboqs/liboqsConfig.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/liboqs" TYPE FILE FILES "/home/ze/PQSLightChain/src/main/liboqs/build/src/CMakeFiles/Export/lib/cmake/liboqs/liboqsConfig-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/oqs" TYPE FILE FILES
    "/home/ze/PQSLightChain/src/main/liboqs/src/oqs.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/common/common.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/common/rand/rand.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/common/aes/aes.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/common/sha2/sha2.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/common/sha3/sha3.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/common/sha3/sha3x4.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/kem/kem.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/sig/sig.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/kem/bike/kem_bike.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/kem/frodokem/kem_frodokem.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/kem/sike/kem_sike.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/sig/picnic/sig_picnic.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/kem/classic_mceliece/kem_classic_mceliece.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/kem/hqc/kem_hqc.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/kem/kyber/kem_kyber.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/kem/ntru/kem_ntru.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/kem/ntruprime/kem_ntruprime.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/kem/saber/kem_saber.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/sig/dilithium/sig_dilithium.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/sig/falcon/sig_falcon.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/sig/rainbow/sig_rainbow.h"
    "/home/ze/PQSLightChain/src/main/liboqs/src/sig/sphincs/sig_sphincs.h"
    "/home/ze/PQSLightChain/src/main/liboqs/build/include/oqs/oqsconfig.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ze/PQSLightChain/src/main/liboqs/build/src/common/cmake_install.cmake")
  include("/home/ze/PQSLightChain/src/main/liboqs/build/src/kem/bike/cmake_install.cmake")
  include("/home/ze/PQSLightChain/src/main/liboqs/build/src/kem/frodokem/cmake_install.cmake")
  include("/home/ze/PQSLightChain/src/main/liboqs/build/src/kem/sike/cmake_install.cmake")
  include("/home/ze/PQSLightChain/src/main/liboqs/build/src/sig/picnic/cmake_install.cmake")
  include("/home/ze/PQSLightChain/src/main/liboqs/build/src/kem/classic_mceliece/cmake_install.cmake")
  include("/home/ze/PQSLightChain/src/main/liboqs/build/src/kem/hqc/cmake_install.cmake")
  include("/home/ze/PQSLightChain/src/main/liboqs/build/src/kem/kyber/cmake_install.cmake")
  include("/home/ze/PQSLightChain/src/main/liboqs/build/src/kem/ntru/cmake_install.cmake")
  include("/home/ze/PQSLightChain/src/main/liboqs/build/src/kem/ntruprime/cmake_install.cmake")
  include("/home/ze/PQSLightChain/src/main/liboqs/build/src/kem/saber/cmake_install.cmake")
  include("/home/ze/PQSLightChain/src/main/liboqs/build/src/sig/dilithium/cmake_install.cmake")
  include("/home/ze/PQSLightChain/src/main/liboqs/build/src/sig/falcon/cmake_install.cmake")
  include("/home/ze/PQSLightChain/src/main/liboqs/build/src/sig/rainbow/cmake_install.cmake")
  include("/home/ze/PQSLightChain/src/main/liboqs/build/src/sig/sphincs/cmake_install.cmake")

endif()

