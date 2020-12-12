; Auto-generated. Do not edit!


(cl:in-package fanuc_moveit-msg)


;//! \htmlinclude TransformationMatrix.msg.html

(cl:defclass <TransformationMatrix> (roslisp-msg-protocol:ros-message)
  ((translation
    :reader translation
    :initarg :translation
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rotation
    :reader rotation
    :initarg :rotation
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass TransformationMatrix (<TransformationMatrix>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransformationMatrix>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransformationMatrix)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fanuc_moveit-msg:<TransformationMatrix> is deprecated: use fanuc_moveit-msg:TransformationMatrix instead.")))

(cl:ensure-generic-function 'translation-val :lambda-list '(m))
(cl:defmethod translation-val ((m <TransformationMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fanuc_moveit-msg:translation-val is deprecated.  Use fanuc_moveit-msg:translation instead.")
  (translation m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <TransformationMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fanuc_moveit-msg:rotation-val is deprecated.  Use fanuc_moveit-msg:rotation instead.")
  (rotation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransformationMatrix>) ostream)
  "Serializes a message object of type '<TransformationMatrix>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'translation) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rotation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rotation))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransformationMatrix>) istream)
  "Deserializes a message object of type '<TransformationMatrix>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'translation) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rotation) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rotation)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransformationMatrix>)))
  "Returns string type for a message object of type '<TransformationMatrix>"
  "fanuc_moveit/TransformationMatrix")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformationMatrix)))
  "Returns string type for a message object of type 'TransformationMatrix"
  "fanuc_moveit/TransformationMatrix")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransformationMatrix>)))
  "Returns md5sum for a message object of type '<TransformationMatrix>"
  "fbb3991bb5188e46c0240cb0698b70c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransformationMatrix)))
  "Returns md5sum for a message object of type 'TransformationMatrix"
  "fbb3991bb5188e46c0240cb0698b70c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransformationMatrix>)))
  "Returns full string definition for message of type '<TransformationMatrix>"
  (cl:format cl:nil "# This represent the 4x4 trasformation matrix, see MultiArrayLayout~%#message definition for documentation on all multiarrays.~%~%geometry_msgs/Vector3 translation~%float32[] rotation~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransformationMatrix)))
  "Returns full string definition for message of type 'TransformationMatrix"
  (cl:format cl:nil "# This represent the 4x4 trasformation matrix, see MultiArrayLayout~%#message definition for documentation on all multiarrays.~%~%geometry_msgs/Vector3 translation~%float32[] rotation~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransformationMatrix>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'translation))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rotation) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransformationMatrix>))
  "Converts a ROS message object to a list"
  (cl:list 'TransformationMatrix
    (cl:cons ':translation (translation msg))
    (cl:cons ':rotation (rotation msg))
))
