# Install script for directory: /home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_kinematics

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fanuc_kinematics/srv" TYPE FILE FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_kinematics/srv/ForwardKinematics.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fanuc_kinematics/action" TYPE FILE FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_kinematics/action/IK.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fanuc_kinematics/msg" TYPE FILE FILES
    "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/share/fanuc_kinematics/msg/IKAction.msg"
    "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/share/fanuc_kinematics/msg/IKActionGoal.msg"
    "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/share/fanuc_kinematics/msg/IKActionResult.msg"
    "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/share/fanuc_kinematics/msg/IKActionFeedback.msg"
    "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/share/fanuc_kinematics/msg/IKGoal.msg"
    "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/share/fanuc_kinematics/msg/IKResult.msg"
    "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/share/fanuc_kinematics/msg/IKFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fanuc_kinematics/cmake" TYPE FILE FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/build/fanuc_kinematics/catkin_generated/installspace/fanuc_kinematics-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/include/fanuc_kinematics")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/share/roseus/ros/fanuc_kinematics")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/share/common-lisp/ros/fanuc_kinematics")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/share/gennodejs/ros/fanuc_kinematics")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/lib/python3/dist-packages/fanuc_kinematics")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/devel/lib/python3/dist-packages/fanuc_kinematics")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/build/fanuc_kinematics/catkin_generated/installspace/fanuc_kinematics.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fanuc_kinematics/cmake" TYPE FILE FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/build/fanuc_kinematics/catkin_generated/installspace/fanuc_kinematics-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fanuc_kinematics/cmake" TYPE FILE FILES
    "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/build/fanuc_kinematics/catkin_generated/installspace/fanuc_kinematicsConfig.cmake"
    "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/build/fanuc_kinematics/catkin_generated/installspace/fanuc_kinematicsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fanuc_kinematics" TYPE FILE FILES "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_kinematics/package.xml")
endif()

