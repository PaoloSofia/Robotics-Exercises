cmake_minimum_required(VERSION 3.1.3)
project(fanuc_moveit)


find_package(catkin REQUIRED COMPONENTS
  std_msgs
  roscpp 
  geometry_msgs 
  tf2_ros
  tf2
  tf2_eigen
  moveit_core
  moveit_ros_planning_interface
  message_generation
  actionlib_msgs
  moveit_kinematics
  
)

find_package(Eigen3 REQUIRED)
find_package(Boost REQUIRED system filesystem date_time thread)


add_message_files(
  FILES
  AxisAngle.msg
  TransformationMatrix.msg
  Transformations.msg
  TransformationsArray.msg
)


generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
  fanuc_moveit
  actionlib_msgs
)

catkin_package(
  CATKIN_DEPENDS 
    message_runtime
    moveit_core
    moveit_ros_planning_interface
    tf2_geometry_msgs
    actionlib_msgs
  DEPENDS
    EIGEN3
)

include_directories(
${catkin_INCLUDE_DIRS}
)


add_executable(transformations_node_publisher src/transformations_node_publisher.cpp)
target_link_libraries(transformations_node_publisher
 ${catkin_LIBRARIES}
)



add_executable(transformations_node_printer src/transformations_node_printer.cpp)
target_link_libraries(transformations_node_printer
 ${catkin_LIBRARIES}
)

#add_executable(inverse_kinematics_client src/inverse_kinematics_client.cpp)
#target_link_libraries(inverse_kinematics_client
# ${catkin_LIBRARIES}
#)

#add_executable(inverse_kinematics_server src/inverse_kinematics_server.cpp)
#target_link_libraries(inverse_kinematics_server
# ${catkin_LIBRARIES}
#)


include_directories(src ${EIGEN3_INCLUDE_DIR})


install(DIRECTORY launch DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
  PATTERN "setup_assistant.launch" EXCLUDE)
install(DIRECTORY config DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})

