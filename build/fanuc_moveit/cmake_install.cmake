# Install script for directory: /home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fanuc_moveit/msg" TYPE FILE FILES
    "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg"
    "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg"
    "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg"
    "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationsArray.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fanuc_moveit/cmake" TYPE FILE FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/build/fanuc_moveit/catkin_generated/installspace/fanuc_moveit-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/include/fanuc_moveit")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/share/roseus/ros/fanuc_moveit")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/share/common-lisp/ros/fanuc_moveit")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/share/gennodejs/ros/fanuc_moveit")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/lib/python3/dist-packages/fanuc_moveit")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/lib/python3/dist-packages/fanuc_moveit")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/build/fanuc_moveit/catkin_generated/installspace/fanuc_moveit.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fanuc_moveit/cmake" TYPE FILE FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/build/fanuc_moveit/catkin_generated/installspace/fanuc_moveit-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fanuc_moveit/cmake" TYPE FILE FILES
    "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/build/fanuc_moveit/catkin_generated/installspace/fanuc_moveitConfig.cmake"
    "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/build/fanuc_moveit/catkin_generated/installspace/fanuc_moveitConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fanuc_moveit" TYPE FILE FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fanuc_moveit" TYPE DIRECTORY FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/launch" REGEX "/setup\\_assistant\\.launch$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fanuc_moveit" TYPE DIRECTORY FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/config")
endif()

