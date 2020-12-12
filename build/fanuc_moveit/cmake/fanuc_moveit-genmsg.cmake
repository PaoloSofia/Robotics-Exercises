# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "fanuc_moveit: 4 messages, 0 services")

set(MSG_I_FLAGS "-Ifanuc_moveit:/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Ifanuc_moveit:/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(fanuc_moveit_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg" NAME_WE)
add_custom_target(_fanuc_moveit_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fanuc_moveit" "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg" NAME_WE)
add_custom_target(_fanuc_moveit_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fanuc_moveit" "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg" NAME_WE)
add_custom_target(_fanuc_moveit_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fanuc_moveit" "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg" "fanuc_moveit/AxisAngle:fanuc_moveit/TransformationMatrix:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationsArray.msg" NAME_WE)
add_custom_target(_fanuc_moveit_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fanuc_moveit" "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationsArray.msg" "fanuc_moveit/AxisAngle:fanuc_moveit/Transformations:fanuc_moveit/TransformationMatrix:geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fanuc_moveit
)
_generate_msg_cpp(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fanuc_moveit
)
_generate_msg_cpp(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg"
  "${MSG_I_FLAGS}"
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fanuc_moveit
)
_generate_msg_cpp(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationsArray.msg"
  "${MSG_I_FLAGS}"
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fanuc_moveit
)

### Generating Services

### Generating Module File
_generate_module_cpp(fanuc_moveit
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fanuc_moveit
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(fanuc_moveit_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(fanuc_moveit_generate_messages fanuc_moveit_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_cpp _fanuc_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_cpp _fanuc_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_cpp _fanuc_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationsArray.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_cpp _fanuc_moveit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fanuc_moveit_gencpp)
add_dependencies(fanuc_moveit_gencpp fanuc_moveit_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fanuc_moveit_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fanuc_moveit
)
_generate_msg_eus(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fanuc_moveit
)
_generate_msg_eus(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg"
  "${MSG_I_FLAGS}"
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fanuc_moveit
)
_generate_msg_eus(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationsArray.msg"
  "${MSG_I_FLAGS}"
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fanuc_moveit
)

### Generating Services

### Generating Module File
_generate_module_eus(fanuc_moveit
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fanuc_moveit
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(fanuc_moveit_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(fanuc_moveit_generate_messages fanuc_moveit_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_eus _fanuc_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_eus _fanuc_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_eus _fanuc_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationsArray.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_eus _fanuc_moveit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fanuc_moveit_geneus)
add_dependencies(fanuc_moveit_geneus fanuc_moveit_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fanuc_moveit_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fanuc_moveit
)
_generate_msg_lisp(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fanuc_moveit
)
_generate_msg_lisp(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg"
  "${MSG_I_FLAGS}"
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fanuc_moveit
)
_generate_msg_lisp(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationsArray.msg"
  "${MSG_I_FLAGS}"
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fanuc_moveit
)

### Generating Services

### Generating Module File
_generate_module_lisp(fanuc_moveit
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fanuc_moveit
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(fanuc_moveit_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(fanuc_moveit_generate_messages fanuc_moveit_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_lisp _fanuc_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_lisp _fanuc_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_lisp _fanuc_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationsArray.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_lisp _fanuc_moveit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fanuc_moveit_genlisp)
add_dependencies(fanuc_moveit_genlisp fanuc_moveit_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fanuc_moveit_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fanuc_moveit
)
_generate_msg_nodejs(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fanuc_moveit
)
_generate_msg_nodejs(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg"
  "${MSG_I_FLAGS}"
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fanuc_moveit
)
_generate_msg_nodejs(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationsArray.msg"
  "${MSG_I_FLAGS}"
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fanuc_moveit
)

### Generating Services

### Generating Module File
_generate_module_nodejs(fanuc_moveit
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fanuc_moveit
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(fanuc_moveit_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(fanuc_moveit_generate_messages fanuc_moveit_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_nodejs _fanuc_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_nodejs _fanuc_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_nodejs _fanuc_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationsArray.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_nodejs _fanuc_moveit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fanuc_moveit_gennodejs)
add_dependencies(fanuc_moveit_gennodejs fanuc_moveit_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fanuc_moveit_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fanuc_moveit
)
_generate_msg_py(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fanuc_moveit
)
_generate_msg_py(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg"
  "${MSG_I_FLAGS}"
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fanuc_moveit
)
_generate_msg_py(fanuc_moveit
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationsArray.msg"
  "${MSG_I_FLAGS}"
  "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg;/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fanuc_moveit
)

### Generating Services

### Generating Module File
_generate_module_py(fanuc_moveit
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fanuc_moveit
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(fanuc_moveit_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(fanuc_moveit_generate_messages fanuc_moveit_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/AxisAngle.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_py _fanuc_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationMatrix.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_py _fanuc_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/Transformations.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_py _fanuc_moveit_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/paolo/ComputerSync/Università/Robotica/robotica_ws/src/fanuc_moveit/msg/TransformationsArray.msg" NAME_WE)
add_dependencies(fanuc_moveit_generate_messages_py _fanuc_moveit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fanuc_moveit_genpy)
add_dependencies(fanuc_moveit_genpy fanuc_moveit_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fanuc_moveit_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fanuc_moveit)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fanuc_moveit
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(fanuc_moveit_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(fanuc_moveit_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET fanuc_moveit_generate_messages_cpp)
  add_dependencies(fanuc_moveit_generate_messages_cpp fanuc_moveit_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(fanuc_moveit_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fanuc_moveit)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fanuc_moveit
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(fanuc_moveit_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(fanuc_moveit_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET fanuc_moveit_generate_messages_eus)
  add_dependencies(fanuc_moveit_generate_messages_eus fanuc_moveit_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(fanuc_moveit_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fanuc_moveit)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fanuc_moveit
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(fanuc_moveit_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(fanuc_moveit_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET fanuc_moveit_generate_messages_lisp)
  add_dependencies(fanuc_moveit_generate_messages_lisp fanuc_moveit_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(fanuc_moveit_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fanuc_moveit)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fanuc_moveit
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(fanuc_moveit_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(fanuc_moveit_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET fanuc_moveit_generate_messages_nodejs)
  add_dependencies(fanuc_moveit_generate_messages_nodejs fanuc_moveit_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(fanuc_moveit_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fanuc_moveit)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fanuc_moveit\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fanuc_moveit
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(fanuc_moveit_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(fanuc_moveit_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET fanuc_moveit_generate_messages_py)
  add_dependencies(fanuc_moveit_generate_messages_py fanuc_moveit_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(fanuc_moveit_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
