;; Auto-generated. Do not edit!


(when (boundp 'fanuc_moveit::Transformations)
  (if (not (find-package "FANUC_MOVEIT"))
    (make-package "FANUC_MOVEIT"))
  (shadow 'Transformations (find-package "FANUC_MOVEIT")))
(unless (find-package "FANUC_MOVEIT::TRANSFORMATIONS")
  (make-package "FANUC_MOVEIT::TRANSFORMATIONS"))

(in-package "ROS")
;;//! \htmlinclude Transformations.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass fanuc_moveit::Transformations
  :super ros::object
  :slots (_parent_frame _child_frame _translation _rpy _axis_angle _tf_matrix ))

(defmethod fanuc_moveit::Transformations
  (:init
   (&key
    ((:parent_frame __parent_frame) "")
    ((:child_frame __child_frame) "")
    ((:translation __translation) (instance geometry_msgs::Vector3 :init))
    ((:rpy __rpy) (instance geometry_msgs::Vector3 :init))
    ((:axis_angle __axis_angle) (instance fanuc_moveit::AxisAngle :init))
    ((:tf_matrix __tf_matrix) (instance fanuc_moveit::TransformationMatrix :init))
    )
   (send-super :init)
   (setq _parent_frame (string __parent_frame))
   (setq _child_frame (string __child_frame))
   (setq _translation __translation)
   (setq _rpy __rpy)
   (setq _axis_angle __axis_angle)
   (setq _tf_matrix __tf_matrix)
   self)
  (:parent_frame
   (&optional __parent_frame)
   (if __parent_frame (setq _parent_frame __parent_frame)) _parent_frame)
  (:child_frame
   (&optional __child_frame)
   (if __child_frame (setq _child_frame __child_frame)) _child_frame)
  (:translation
   (&rest __translation)
   (if (keywordp (car __translation))
       (send* _translation __translation)
     (progn
       (if __translation (setq _translation (car __translation)))
       _translation)))
  (:rpy
   (&rest __rpy)
   (if (keywordp (car __rpy))
       (send* _rpy __rpy)
     (progn
       (if __rpy (setq _rpy (car __rpy)))
       _rpy)))
  (:axis_angle
   (&rest __axis_angle)
   (if (keywordp (car __axis_angle))
       (send* _axis_angle __axis_angle)
     (progn
       (if __axis_angle (setq _axis_angle (car __axis_angle)))
       _axis_angle)))
  (:tf_matrix
   (&rest __tf_matrix)
   (if (keywordp (car __tf_matrix))
       (send* _tf_matrix __tf_matrix)
     (progn
       (if __tf_matrix (setq _tf_matrix (car __tf_matrix)))
       _tf_matrix)))
  (:serialization-length
   ()
   (+
    ;; string _parent_frame
    4 (length _parent_frame)
    ;; string _child_frame
    4 (length _child_frame)
    ;; geometry_msgs/Vector3 _translation
    (send _translation :serialization-length)
    ;; geometry_msgs/Vector3 _rpy
    (send _rpy :serialization-length)
    ;; fanuc_moveit/AxisAngle _axis_angle
    (send _axis_angle :serialization-length)
    ;; fanuc_moveit/TransformationMatrix _tf_matrix
    (send _tf_matrix :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _parent_frame
       (write-long (length _parent_frame) s) (princ _parent_frame s)
     ;; string _child_frame
       (write-long (length _child_frame) s) (princ _child_frame s)
     ;; geometry_msgs/Vector3 _translation
       (send _translation :serialize s)
     ;; geometry_msgs/Vector3 _rpy
       (send _rpy :serialize s)
     ;; fanuc_moveit/AxisAngle _axis_angle
       (send _axis_angle :serialize s)
     ;; fanuc_moveit/TransformationMatrix _tf_matrix
       (send _tf_matrix :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _parent_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parent_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _child_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _child_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Vector3 _translation
     (send _translation :deserialize buf ptr-) (incf ptr- (send _translation :serialization-length))
   ;; geometry_msgs/Vector3 _rpy
     (send _rpy :deserialize buf ptr-) (incf ptr- (send _rpy :serialization-length))
   ;; fanuc_moveit/AxisAngle _axis_angle
     (send _axis_angle :deserialize buf ptr-) (incf ptr- (send _axis_angle :serialization-length))
   ;; fanuc_moveit/TransformationMatrix _tf_matrix
     (send _tf_matrix :deserialize buf ptr-) (incf ptr- (send _tf_matrix :serialization-length))
   ;;
   self)
  )

(setf (get fanuc_moveit::Transformations :md5sum-) "bbbf0fb7520bc61fcd2744d84e1d226c")
(setf (get fanuc_moveit::Transformations :datatype-) "fanuc_moveit/Transformations")
(setf (get fanuc_moveit::Transformations :definition-)
      "#This represent three different representation of a trasform, 
#RPY, axis-angle and homogeneus trasformation matrix
string parent_frame
string child_frame
geometry_msgs/Vector3 translation
geometry_msgs/Vector3 rpy
AxisAngle axis_angle
TransformationMatrix tf_matrix
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: fanuc_moveit/AxisAngle
#This represent a transformation as axis-angle representation

geometry_msgs/Vector3 axis
float32 angle

================================================================================
MSG: fanuc_moveit/TransformationMatrix
# This represent the 4x4 trasformation matrix, see MultiArrayLayout
#message definition for documentation on all multiarrays.

geometry_msgs/Vector3 translation
float32[] rotation
")



(provide :fanuc_moveit/Transformations "bbbf0fb7520bc61fcd2744d84e1d226c")


