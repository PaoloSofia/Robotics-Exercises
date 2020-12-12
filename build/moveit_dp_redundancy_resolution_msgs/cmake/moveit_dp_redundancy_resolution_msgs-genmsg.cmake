# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "moveit_dp_redundancy_resolution_msgs: 1 messages, 1 services")

set(MSG_I_FLAGS "-Imoveit_dp_redundancy_resolution_msgs:/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Imoveit_msgs:/opt/ros/noetic/share/moveit_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/noetic/share/trajectory_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/noetic/share/shape_msgs/cmake/../msg;-Iobject_recognition_msgs:/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg;-Ioctomap_msgs:/opt/ros/noetic/share/octomap_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(moveit_dp_redundancy_resolution_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg/WorkspaceTrajectory.msg" NAME_WE)
add_custom_target(_moveit_dp_redundancy_resolution_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_dp_redundancy_resolution_msgs" "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg/WorkspaceTrajectory.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/srv/GetOptimizedJointsTrajectory.srv" NAME_WE)
add_custom_target(_moveit_dp_redundancy_resolution_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_dp_redundancy_resolution_msgs" "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/srv/GetOptimizedJointsTrajectory.srv" "moveit_msgs/CollisionObject:trajectory_msgs/MultiDOFJointTrajectory:std_msgs/Header:moveit_msgs/RobotState:moveit_msgs/AttachedCollisionObject:geometry_msgs/PoseStamped:geometry_msgs/Twist:shape_msgs/Plane:moveit_msgs/MoveItErrorCodes:shape_msgs/MeshTriangle:trajectory_msgs/JointTrajectoryPoint:moveit_msgs/Constraints:geometry_msgs/Quaternion:geometry_msgs/Wrench:sensor_msgs/JointState:object_recognition_msgs/ObjectType:moveit_msgs/BoundingVolume:moveit_msgs/VisibilityConstraint:shape_msgs/Mesh:moveit_dp_redundancy_resolution_msgs/WorkspaceTrajectory:trajectory_msgs/JointTrajectory:geometry_msgs/Transform:sensor_msgs/MultiDOFJointState:moveit_msgs/JointConstraint:moveit_msgs/PositionConstraint:moveit_msgs/OrientationConstraint:moveit_msgs/RobotTrajectory:geometry_msgs/Point:trajectory_msgs/MultiDOFJointTrajectoryPoint:geometry_msgs/Pose:shape_msgs/SolidPrimitive:geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(moveit_dp_redundancy_resolution_msgs
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg/WorkspaceTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
)

### Generating Services
_generate_srv_cpp(moveit_dp_redundancy_resolution_msgs
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/srv/GetOptimizedJointsTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/MoveItErrorCodes.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
)

### Generating Module File
_generate_module_cpp(moveit_dp_redundancy_resolution_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(moveit_dp_redundancy_resolution_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages moveit_dp_redundancy_resolution_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg/WorkspaceTrajectory.msg" NAME_WE)
add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_cpp _moveit_dp_redundancy_resolution_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/srv/GetOptimizedJointsTrajectory.srv" NAME_WE)
add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_cpp _moveit_dp_redundancy_resolution_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_dp_redundancy_resolution_msgs_gencpp)
add_dependencies(moveit_dp_redundancy_resolution_msgs_gencpp moveit_dp_redundancy_resolution_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_dp_redundancy_resolution_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(moveit_dp_redundancy_resolution_msgs
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg/WorkspaceTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
)

### Generating Services
_generate_srv_eus(moveit_dp_redundancy_resolution_msgs
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/srv/GetOptimizedJointsTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/MoveItErrorCodes.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
)

### Generating Module File
_generate_module_eus(moveit_dp_redundancy_resolution_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(moveit_dp_redundancy_resolution_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages moveit_dp_redundancy_resolution_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg/WorkspaceTrajectory.msg" NAME_WE)
add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_eus _moveit_dp_redundancy_resolution_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/srv/GetOptimizedJointsTrajectory.srv" NAME_WE)
add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_eus _moveit_dp_redundancy_resolution_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_dp_redundancy_resolution_msgs_geneus)
add_dependencies(moveit_dp_redundancy_resolution_msgs_geneus moveit_dp_redundancy_resolution_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_dp_redundancy_resolution_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(moveit_dp_redundancy_resolution_msgs
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg/WorkspaceTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
)

### Generating Services
_generate_srv_lisp(moveit_dp_redundancy_resolution_msgs
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/srv/GetOptimizedJointsTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/MoveItErrorCodes.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
)

### Generating Module File
_generate_module_lisp(moveit_dp_redundancy_resolution_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(moveit_dp_redundancy_resolution_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages moveit_dp_redundancy_resolution_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg/WorkspaceTrajectory.msg" NAME_WE)
add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_lisp _moveit_dp_redundancy_resolution_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/srv/GetOptimizedJointsTrajectory.srv" NAME_WE)
add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_lisp _moveit_dp_redundancy_resolution_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_dp_redundancy_resolution_msgs_genlisp)
add_dependencies(moveit_dp_redundancy_resolution_msgs_genlisp moveit_dp_redundancy_resolution_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_dp_redundancy_resolution_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(moveit_dp_redundancy_resolution_msgs
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg/WorkspaceTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
)

### Generating Services
_generate_srv_nodejs(moveit_dp_redundancy_resolution_msgs
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/srv/GetOptimizedJointsTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/MoveItErrorCodes.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
)

### Generating Module File
_generate_module_nodejs(moveit_dp_redundancy_resolution_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(moveit_dp_redundancy_resolution_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages moveit_dp_redundancy_resolution_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg/WorkspaceTrajectory.msg" NAME_WE)
add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_nodejs _moveit_dp_redundancy_resolution_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/srv/GetOptimizedJointsTrajectory.srv" NAME_WE)
add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_nodejs _moveit_dp_redundancy_resolution_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_dp_redundancy_resolution_msgs_gennodejs)
add_dependencies(moveit_dp_redundancy_resolution_msgs_gennodejs moveit_dp_redundancy_resolution_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_dp_redundancy_resolution_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(moveit_dp_redundancy_resolution_msgs
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg/WorkspaceTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
)

### Generating Services
_generate_srv_py(moveit_dp_redundancy_resolution_msgs
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/srv/GetOptimizedJointsTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/MoveItErrorCodes.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
)

### Generating Module File
_generate_module_py(moveit_dp_redundancy_resolution_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(moveit_dp_redundancy_resolution_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages moveit_dp_redundancy_resolution_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/msg/WorkspaceTrajectory.msg" NAME_WE)
add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_py _moveit_dp_redundancy_resolution_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/moveit_dp_redundancy_resolution_msgs/srv/GetOptimizedJointsTrajectory.srv" NAME_WE)
add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_py _moveit_dp_redundancy_resolution_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_dp_redundancy_resolution_msgs_genpy)
add_dependencies(moveit_dp_redundancy_resolution_msgs_genpy moveit_dp_redundancy_resolution_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_dp_redundancy_resolution_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET moveit_msgs_generate_messages_cpp)
  add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_cpp moveit_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET moveit_msgs_generate_messages_eus)
  add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_eus moveit_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET moveit_msgs_generate_messages_lisp)
  add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_lisp moveit_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET moveit_msgs_generate_messages_nodejs)
  add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_nodejs moveit_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_dp_redundancy_resolution_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET moveit_msgs_generate_messages_py)
  add_dependencies(moveit_dp_redundancy_resolution_msgs_generate_messages_py moveit_msgs_generate_messages_py)
endif()
