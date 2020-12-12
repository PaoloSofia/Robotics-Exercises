;; Auto-generated. Do not edit!


(when (boundp 'fanuc_moveit::TransformationMatrix)
  (if (not (find-package "FANUC_MOVEIT"))
    (make-package "FANUC_MOVEIT"))
  (shadow 'TransformationMatrix (find-package "FANUC_MOVEIT")))
(unless (find-package "FANUC_MOVEIT::TRANSFORMATIONMATRIX")
  (make-package "FANUC_MOVEIT::TRANSFORMATIONMATRIX"))

(in-package "ROS")
;;//! \htmlinclude TransformationMatrix.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass fanuc_moveit::TransformationMatrix
  :super ros::object
  :slots (_translation _rotation ))

(defmethod fanuc_moveit::TransformationMatrix
  (:init
   (&key
    ((:translation __translation) (instance geometry_msgs::Vector3 :init))
    ((:rotation __rotation) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _translation __translation)
   (setq _rotation __rotation)
   self)
  (:translation
   (&rest __translation)
   (if (keywordp (car __translation))
       (send* _translation __translation)
     (progn
       (if __translation (setq _translation (car __translation)))
       _translation)))
  (:rotation
   (&optional __rotation)
   (if __rotation (setq _rotation __rotation)) _rotation)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _translation
    (send _translation :serialization-length)
    ;; float32[] _rotation
    (* 4    (length _rotation)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _translation
       (send _translation :serialize s)
     ;; float32[] _rotation
     (write-long (length _rotation) s)
     (dotimes (i (length _rotation))
       (sys::poke (elt _rotation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _translation
     (send _translation :deserialize buf ptr-) (incf ptr- (send _translation :serialization-length))
   ;; float32[] _rotation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rotation (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rotation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get fanuc_moveit::TransformationMatrix :md5sum-) "fbb3991bb5188e46c0240cb0698b70c8")
(setf (get fanuc_moveit::TransformationMatrix :datatype-) "fanuc_moveit/TransformationMatrix")
(setf (get fanuc_moveit::TransformationMatrix :definition-)
      "# This represent the 4x4 trasformation matrix, see MultiArrayLayout
#message definition for documentation on all multiarrays.

geometry_msgs/Vector3 translation
float32[] rotation
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
")



(provide :fanuc_moveit/TransformationMatrix "fbb3991bb5188e46c0240cb0698b70c8")


