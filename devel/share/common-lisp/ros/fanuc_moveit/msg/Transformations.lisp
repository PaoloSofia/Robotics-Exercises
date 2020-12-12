; Auto-generated. Do not edit!


(cl:in-package fanuc_moveit-msg)


;//! \htmlinclude Transformations.msg.html

(cl:defclass <Transformations> (roslisp-msg-protocol:ros-message)
  ((parent_frame
    :reader parent_frame
    :initarg :parent_frame
    :type cl:string
    :initform "")
   (child_frame
    :reader child_frame
    :initarg :child_frame
    :type cl:string
    :initform "")
   (translation
    :reader translation
    :initarg :translation
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rpy
    :reader rpy
    :initarg :rpy
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (axis_angle
    :reader axis_angle
    :initarg :axis_angle
    :type fanuc_moveit-msg:AxisAngle
    :initform (cl:make-instance 'fanuc_moveit-msg:AxisAngle))
   (tf_matrix
    :reader tf_matrix
    :initarg :tf_matrix
    :type fanuc_moveit-msg:TransformationMatrix
    :initform (cl:make-instance 'fanuc_moveit-msg:TransformationMatrix)))
)

(cl:defclass Transformations (<Transformations>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Transformations>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Transformations)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fanuc_moveit-msg:<Transformations> is deprecated: use fanuc_moveit-msg:Transformations instead.")))

(cl:ensure-generic-function 'parent_frame-val :lambda-list '(m))
(cl:defmethod parent_frame-val ((m <Transformations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fanuc_moveit-msg:parent_frame-val is deprecated.  Use fanuc_moveit-msg:parent_frame instead.")
  (parent_frame m))

(cl:ensure-generic-function 'child_frame-val :lambda-list '(m))
(cl:defmethod child_frame-val ((m <Transformations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fanuc_moveit-msg:child_frame-val is deprecated.  Use fanuc_moveit-msg:child_frame instead.")
  (child_frame m))

(cl:ensure-generic-function 'translation-val :lambda-list '(m))
(cl:defmethod translation-val ((m <Transformations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fanuc_moveit-msg:translation-val is deprecated.  Use fanuc_moveit-msg:translation instead.")
  (translation m))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <Transformations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fanuc_moveit-msg:rpy-val is deprecated.  Use fanuc_moveit-msg:rpy instead.")
  (rpy m))

(cl:ensure-generic-function 'axis_angle-val :lambda-list '(m))
(cl:defmethod axis_angle-val ((m <Transformations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fanuc_moveit-msg:axis_angle-val is deprecated.  Use fanuc_moveit-msg:axis_angle instead.")
  (axis_angle m))

(cl:ensure-generic-function 'tf_matrix-val :lambda-list '(m))
(cl:defmethod tf_matrix-val ((m <Transformations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fanuc_moveit-msg:tf_matrix-val is deprecated.  Use fanuc_moveit-msg:tf_matrix instead.")
  (tf_matrix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Transformations>) ostream)
  "Serializes a message object of type '<Transformations>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parent_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parent_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'child_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'child_frame))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'translation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'axis_angle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tf_matrix) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Transformations>) istream)
  "Deserializes a message object of type '<Transformations>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parent_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parent_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'child_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'child_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'translation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'axis_angle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tf_matrix) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Transformations>)))
  "Returns string type for a message object of type '<Transformations>"
  "fanuc_moveit/Transformations")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Transformations)))
  "Returns string type for a message object of type 'Transformations"
  "fanuc_moveit/Transformations")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Transformations>)))
  "Returns md5sum for a message object of type '<Transformations>"
  "bbbf0fb7520bc61fcd2744d84e1d226c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Transformations)))
  "Returns md5sum for a message object of type 'Transformations"
  "bbbf0fb7520bc61fcd2744d84e1d226c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Transformations>)))
  "Returns full string definition for message of type '<Transformations>"
  (cl:format cl:nil "#This represent three different representation of a trasform, ~%#RPY, axis-angle and homogeneus trasformation matrix~%string parent_frame~%string child_frame~%geometry_msgs/Vector3 translation~%geometry_msgs/Vector3 rpy~%AxisAngle axis_angle~%TransformationMatrix tf_matrix~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: fanuc_moveit/AxisAngle~%#This represent a transformation as axis-angle representation~%~%geometry_msgs/Vector3 axis~%float32 angle~%~%================================================================================~%MSG: fanuc_moveit/TransformationMatrix~%# This represent the 4x4 trasformation matrix, see MultiArrayLayout~%#message definition for documentation on all multiarrays.~%~%geometry_msgs/Vector3 translation~%float32[] rotation~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Transformations)))
  "Returns full string definition for message of type 'Transformations"
  (cl:format cl:nil "#This represent three different representation of a trasform, ~%#RPY, axis-angle and homogeneus trasformation matrix~%string parent_frame~%string child_frame~%geometry_msgs/Vector3 translation~%geometry_msgs/Vector3 rpy~%AxisAngle axis_angle~%TransformationMatrix tf_matrix~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: fanuc_moveit/AxisAngle~%#This represent a transformation as axis-angle representation~%~%geometry_msgs/Vector3 axis~%float32 angle~%~%================================================================================~%MSG: fanuc_moveit/TransformationMatrix~%# This represent the 4x4 trasformation matrix, see MultiArrayLayout~%#message definition for documentation on all multiarrays.~%~%geometry_msgs/Vector3 translation~%float32[] rotation~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Transformations>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'parent_frame))
     4 (cl:length (cl:slot-value msg 'child_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'translation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'axis_angle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tf_matrix))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Transformations>))
  "Converts a ROS message object to a list"
  (cl:list 'Transformations
    (cl:cons ':parent_frame (parent_frame msg))
    (cl:cons ':child_frame (child_frame msg))
    (cl:cons ':translation (translation msg))
    (cl:cons ':rpy (rpy msg))
    (cl:cons ':axis_angle (axis_angle msg))
    (cl:cons ':tf_matrix (tf_matrix msg))
))
