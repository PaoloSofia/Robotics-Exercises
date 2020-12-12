; Auto-generated. Do not edit!


(cl:in-package fanuc_kinematics-msg)


;//! \htmlinclude JointAnglesArray.msg.html

(cl:defclass <JointAnglesArray> (roslisp-msg-protocol:ros-message)
  ((array
    :reader array
    :initarg :array
    :type (cl:vector fanuc_kinematics-msg:JointAngles)
   :initform (cl:make-array 0 :element-type 'fanuc_kinematics-msg:JointAngles :initial-element (cl:make-instance 'fanuc_kinematics-msg:JointAngles))))
)

(cl:defclass JointAnglesArray (<JointAnglesArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointAnglesArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointAnglesArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fanuc_kinematics-msg:<JointAnglesArray> is deprecated: use fanuc_kinematics-msg:JointAnglesArray instead.")))

(cl:ensure-generic-function 'array-val :lambda-list '(m))
(cl:defmethod array-val ((m <JointAnglesArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fanuc_kinematics-msg:array-val is deprecated.  Use fanuc_kinematics-msg:array instead.")
  (array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointAnglesArray>) ostream)
  "Serializes a message object of type '<JointAnglesArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointAnglesArray>) istream)
  "Deserializes a message object of type '<JointAnglesArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'fanuc_kinematics-msg:JointAngles))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointAnglesArray>)))
  "Returns string type for a message object of type '<JointAnglesArray>"
  "fanuc_kinematics/JointAnglesArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointAnglesArray)))
  "Returns string type for a message object of type 'JointAnglesArray"
  "fanuc_kinematics/JointAnglesArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointAnglesArray>)))
  "Returns md5sum for a message object of type '<JointAnglesArray>"
  "23f8d77e3668a9f9844ada86c754258b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointAnglesArray)))
  "Returns md5sum for a message object of type 'JointAnglesArray"
  "23f8d77e3668a9f9844ada86c754258b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointAnglesArray>)))
  "Returns full string definition for message of type '<JointAnglesArray>"
  (cl:format cl:nil "# Represent an array of a joint angles' set.~%JointAngles[] array~%================================================================================~%MSG: fanuc_kinematics/JointAngles~%# Represent a set of joint angles~%float64[] joint_angles~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointAnglesArray)))
  "Returns full string definition for message of type 'JointAnglesArray"
  (cl:format cl:nil "# Represent an array of a joint angles' set.~%JointAngles[] array~%================================================================================~%MSG: fanuc_kinematics/JointAngles~%# Represent a set of joint angles~%float64[] joint_angles~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointAnglesArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointAnglesArray>))
  "Converts a ROS message object to a list"
  (cl:list 'JointAnglesArray
    (cl:cons ':array (array msg))
))
