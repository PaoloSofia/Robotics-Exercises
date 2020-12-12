;; Auto-generated. Do not edit!


(when (boundp 'fanuc_moveit::TransformationsArray)
  (if (not (find-package "FANUC_MOVEIT"))
    (make-package "FANUC_MOVEIT"))
  (shadow 'TransformationsArray (find-package "FANUC_MOVEIT")))
(unless (find-package "FANUC_MOVEIT::TRANSFORMATIONSARRAY")
  (make-package "FANUC_MOVEIT::TRANSFORMATIONSARRAY"))

(in-package "ROS")
;;//! \htmlinclude TransformationsArray.msg.html


(defclass fanuc_moveit::TransformationsArray
  :super ros::object
  :slots (_transformations ))

(defmethod fanuc_moveit::TransformationsArray
  (:init
   (&key
    ((:transformations __transformations) ())
    )
   (send-super :init)
   (setq _transformations __transformations)
   self)
  (:transformations
   (&rest __transformations)
   (if (keywordp (car __transformations))
       (send* _transformations __transformations)
     (progn
       (if __transformations (setq _transformations (car __transformations)))
       _transformations)))
  (:serialization-length
   ()
   (+
    ;; fanuc_moveit/Transformations[] _transformations
    (apply #'+ (send-all _transformations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fanuc_moveit/Transformations[] _transformations
     (write-long (length _transformations) s)
     (dolist (elem _transformations)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fanuc_moveit/Transformations[] _transformations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transformations (let (r) (dotimes (i n) (push (instance fanuc_moveit::Transformations :init) r)) r))
     (dolist (elem- _transformations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get fanuc_moveit::TransformationsArray :md5sum-) "600ffd76db98e0bc75fa65c75bc66361")
(setf (get fanuc_moveit::TransformationsArray :datatype-) "fanuc_moveit/TransformationsArray")
(setf (get fanuc_moveit::TransformationsArray :definition-)
      "#This represent an array of transformations

Transformations[] transformations
================================================================================
MSG: fanuc_moveit/Transformations
#This represent three different representation of a trasform, 
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



(provide :fanuc_moveit/TransformationsArray "600ffd76db98e0bc75fa65c75bc66361")


