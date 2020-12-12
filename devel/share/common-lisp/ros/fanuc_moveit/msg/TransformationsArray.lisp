; Auto-generated. Do not edit!


(cl:in-package fanuc_moveit-msg)


;//! \htmlinclude TransformationsArray.msg.html

(cl:defclass <TransformationsArray> (roslisp-msg-protocol:ros-message)
  ((transformations
    :reader transformations
    :initarg :transformations
    :type (cl:vector fanuc_moveit-msg:Transformations)
   :initform (cl:make-array 0 :element-type 'fanuc_moveit-msg:Transformations :initial-element (cl:make-instance 'fanuc_moveit-msg:Transformations))))
)

(cl:defclass TransformationsArray (<TransformationsArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransformationsArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransformationsArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fanuc_moveit-msg:<TransformationsArray> is deprecated: use fanuc_moveit-msg:TransformationsArray instead.")))

(cl:ensure-generic-function 'transformations-val :lambda-list '(m))
(cl:defmethod transformations-val ((m <TransformationsArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fanuc_moveit-msg:transformations-val is deprecated.  Use fanuc_moveit-msg:transformations instead.")
  (transformations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransformationsArray>) ostream)
  "Serializes a message object of type '<TransformationsArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'transformations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'transformations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransformationsArray>) istream)
  "Deserializes a message object of type '<TransformationsArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'transformations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'transformations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'fanuc_moveit-msg:Transformations))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransformationsArray>)))
  "Returns string type for a message object of type '<TransformationsArray>"
  "fanuc_moveit/TransformationsArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformationsArray)))
  "Returns string type for a message object of type 'TransformationsArray"
  "fanuc_moveit/TransformationsArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransformationsArray>)))
  "Returns md5sum for a message object of type '<TransformationsArray>"
  "600ffd76db98e0bc75fa65c75bc66361")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransformationsArray)))
  "Returns md5sum for a message object of type 'TransformationsArray"
  "600ffd76db98e0bc75fa65c75bc66361")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransformationsArray>)))
  "Returns full string definition for message of type '<TransformationsArray>"
  (cl:format cl:nil "#This represent an array of transformations~%~%Transformations[] transformations~%================================================================================~%MSG: fanuc_moveit/Transformations~%#This represent three different representation of a trasform, ~%#RPY, axis-angle and homogeneus trasformation matrix~%string parent_frame~%string child_frame~%geometry_msgs/Vector3 translation~%geometry_msgs/Vector3 rpy~%AxisAngle axis_angle~%TransformationMatrix tf_matrix~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: fanuc_moveit/AxisAngle~%#This represent a transformation as axis-angle representation~%~%geometry_msgs/Vector3 axis~%float32 angle~%~%================================================================================~%MSG: fanuc_moveit/TransformationMatrix~%# This represent the 4x4 trasformation matrix, see MultiArrayLayout~%#message definition for documentation on all multiarrays.~%~%geometry_msgs/Vector3 translation~%float32[] rotation~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransformationsArray)))
  "Returns full string definition for message of type 'TransformationsArray"
  (cl:format cl:nil "#This represent an array of transformations~%~%Transformations[] transformations~%================================================================================~%MSG: fanuc_moveit/Transformations~%#This represent three different representation of a trasform, ~%#RPY, axis-angle and homogeneus trasformation matrix~%string parent_frame~%string child_frame~%geometry_msgs/Vector3 translation~%geometry_msgs/Vector3 rpy~%AxisAngle axis_angle~%TransformationMatrix tf_matrix~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: fanuc_moveit/AxisAngle~%#This represent a transformation as axis-angle representation~%~%geometry_msgs/Vector3 axis~%float32 angle~%~%================================================================================~%MSG: fanuc_moveit/TransformationMatrix~%# This represent the 4x4 trasformation matrix, see MultiArrayLayout~%#message definition for documentation on all multiarrays.~%~%geometry_msgs/Vector3 translation~%float32[] rotation~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransformationsArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'transformations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransformationsArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TransformationsArray
    (cl:cons ':transformations (transformations msg))
))
