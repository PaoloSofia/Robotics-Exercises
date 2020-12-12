; Auto-generated. Do not edit!


(cl:in-package fanuc_moveit-msg)


;//! \htmlinclude AxisAngle.msg.html

(cl:defclass <AxisAngle> (roslisp-msg-protocol:ros-message)
  ((axis
    :reader axis
    :initarg :axis
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass AxisAngle (<AxisAngle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AxisAngle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AxisAngle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fanuc_moveit-msg:<AxisAngle> is deprecated: use fanuc_moveit-msg:AxisAngle instead.")))

(cl:ensure-generic-function 'axis-val :lambda-list '(m))
(cl:defmethod axis-val ((m <AxisAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fanuc_moveit-msg:axis-val is deprecated.  Use fanuc_moveit-msg:axis instead.")
  (axis m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <AxisAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fanuc_moveit-msg:angle-val is deprecated.  Use fanuc_moveit-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AxisAngle>) ostream)
  "Serializes a message object of type '<AxisAngle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'axis) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AxisAngle>) istream)
  "Deserializes a message object of type '<AxisAngle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'axis) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AxisAngle>)))
  "Returns string type for a message object of type '<AxisAngle>"
  "fanuc_moveit/AxisAngle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AxisAngle)))
  "Returns string type for a message object of type 'AxisAngle"
  "fanuc_moveit/AxisAngle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AxisAngle>)))
  "Returns md5sum for a message object of type '<AxisAngle>"
  "ccd1f1765b334728af430dd2d7e79aec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AxisAngle)))
  "Returns md5sum for a message object of type 'AxisAngle"
  "ccd1f1765b334728af430dd2d7e79aec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AxisAngle>)))
  "Returns full string definition for message of type '<AxisAngle>"
  (cl:format cl:nil "#This represent a transformation as axis-angle representation~%~%geometry_msgs/Vector3 axis~%float32 angle~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AxisAngle)))
  "Returns full string definition for message of type 'AxisAngle"
  (cl:format cl:nil "#This represent a transformation as axis-angle representation~%~%geometry_msgs/Vector3 axis~%float32 angle~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AxisAngle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'axis))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AxisAngle>))
  "Converts a ROS message object to a list"
  (cl:list 'AxisAngle
    (cl:cons ':axis (axis msg))
    (cl:cons ':angle (angle msg))
))
