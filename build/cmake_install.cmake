# Install script for directory: /Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/products_host")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/ini_test")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ini_test" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ini_test")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/lib"
      -delete_rpath "/opt/homebrew/lib"
      -delete_rpath "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build"
      -add_rpath "@executable_path/../lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ini_test")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ini_test")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/mqtt_test")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mqtt_test" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mqtt_test")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/lib"
      -delete_rpath "/opt/homebrew/lib"
      -delete_rpath "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build"
      -add_rpath "@executable_path/../lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mqtt_test")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mqtt_test")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/mqtt_stress")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mqtt_stress" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mqtt_stress")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/lib"
      -delete_rpath "/opt/homebrew/lib"
      -delete_rpath "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build"
      -add_rpath "@executable_path/../lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mqtt_stress")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mqtt_stress")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/c-cnc")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/c-cnc" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/c-cnc")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/lib"
      -delete_rpath "/opt/homebrew/lib"
      -delete_rpath "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build"
      -add_rpath "@executable_path/../lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/c-cnc")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/c-cnc")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/libC-CNC_shared.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libC-CNC_shared.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libC-CNC_shared.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/lib"
      -delete_rpath "/opt/homebrew/lib"
      -add_rpath "@executable_path/../lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libC-CNC_shared.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libC-CNC_shared.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/ashkan/Desktop/university/2021-22/precision engineering /project/project last/cnc-programm/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
