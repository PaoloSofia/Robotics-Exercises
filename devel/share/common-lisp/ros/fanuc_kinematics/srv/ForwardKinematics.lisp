; Auto-generated. Do not edit!


(cl:in-package fanuc_kinematics-srv)


;//! \htmlinclude ForwardKinematics-request.msg.html

(cl:defclass <ForwardKinematics-request> (roslisp-msg-protocol:ros-message)
  ((link_name
    :reader link_name
    :initarg :link_name
    :type cl:string
    :initform ""))
)

(cl:defclass ForwardKinematics-request (<ForwardKinematics-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForwardKinematics-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForwardKinematics-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fanuc_kinematics-srv:<ForwardKinematics-request> is deprecated: use fanuc_kinematics-srv:ForwardKinematics-request instead.")))

(cl:ensure-generic-function 'link_name-val :lambda-list '(m))
(cl:defmethod link_name-val ((m <ForwardKinematics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fanuc_kinematics-srv:link_name-val is deprecated.  Use fanuc_kinematics-srv:link_name instead.")
  (link_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForwardKinematics-request>) ostream)
  "Serializes a message object of type '<ForwardKinematics-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForwardKinematics-request>) istream)
  "Deserializes a message object of type '<ForwardKinematics-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForwardKinematics-request>)))
  "Returns string type for a service object of type '<ForwardKinematics-request>"
  "fanuc_kinematics/ForwardKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForwardKinematics-request)))
  "Returns string type for a service object of type 'ForwardKinematics-request"
  "fanuc_kinematics/ForwardKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForwardKinematics-request>)))
  "Returns md5sum for a message object of type '<ForwardKinematics-request>"
  "7878278dc9e10f5c8ed44003c357b811")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForwardKinematics-request)))
  "Returns md5sum for a message object of type 'ForwardKinematics-request"
  "7878278dc9e10f5c8ed44003c357b811")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForwardKinematics-request>)))
  "Returns full string definition for message of type '<ForwardKinematics-request>"
  (cl:format cl:nil "string link_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForwardKinematics-request)))
  "Returns full string definition for message of type 'ForwardKinematics-request"
  (cl:format cl:nil "string link_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForwardKinematics-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'link_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForwardKinematics-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ForwardKinematics-request
    (cl:cons ':link_name (link_name msg))
))
;//! \htmlinclude ForwardKinematics-response.msg.html

(cl:defclass <ForwardKinematics-response> (roslisp-msg-protocol:ros-message)
  ((translation
    :reader translation
    :initarg :translation
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (rotation
    :reader rotation
    :initarg :rotation
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ForwardKinematics-response (<ForwardKinematics-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForwardKinematics-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForwardKinematics-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fanuc_kinematics-srv:<ForwardKinematics-response> is deprecated: use fanuc_kinematics-srv:ForwardKinematics-response instead.")))

(cl:ensure-generic-function 'translation-val :lambda-list '(m))
(cl:defmethod translation-val ((m <ForwardKinematics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fanuc_kinematics-srv:translation-val is deprecated.  Use fanuc_kinematics-srv:translation instead.")
  (translation m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <ForwardKinematics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fanuc_kinematics-srv:rotation-val is deprecated.  Use fanuc_kinematics-srv:rotation instead.")
  (rotation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForwardKinematics-response>) ostream)
  "Serializes a message object of type '<ForwardKinematics-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'translation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'translation))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForwardKinematics-response>) istream)
  "Deserializes a message object of type '<ForwardKinematics-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'translation) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'translation)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForwardKinematics-response>)))
  "Returns string type for a service object of type '<ForwardKinematics-response>"
  "fanuc_kinematics/ForwardKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForwardKinematics-response)))
  "Returns string type for a service object of type 'ForwardKinematics-response"
  "fanuc_kinematics/ForwardKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForwardKinematics-response>)))
  "Returns md5sum for a message object of type '<ForwardKinematics-response>"
  "7878278dc9e10f5c8ed44003c357b811")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForwardKinematics-response)))
  "Returns md5sum for a message object of type 'ForwardKinematics-response"
  "7878278dc9e10f5c8ed44003c357b811")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForwardKinematics-response>)))
  "Returns full string definition for message of type '<ForwardKinematics-response>"
  (cl:format cl:nil "float32[] translation~%float32[] rotation~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForwardKinematics-response)))
  "Returns full string definition for message of type 'ForwardKinematics-response"
  (cl:format cl:nil "float32[] translation~%float32[] rotation~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForwardKinematics-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'translation) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rotation) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForwardKinematics-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ForwardKinematics-response
    (cl:cons ':translation (translation msg))
    (cl:cons ':rotation (rotation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ForwardKinematics)))
  'ForwardKinematics-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ForwardKinematics)))
  'ForwardKinematics-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForwardKinematics)))
  "Returns string type for a service object of type '<ForwardKinematics>"
  "fanuc_kinematics/ForwardKinematics")