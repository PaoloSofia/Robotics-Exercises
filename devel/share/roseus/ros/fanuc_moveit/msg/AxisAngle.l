;; Auto-generated. Do not edit!


(when (boundp 'fanuc_moveit::AxisAngle)
  (if (not (find-package "FANUC_MOVEIT"))
    (make-package "FANUC_MOVEIT"))
  (shadow 'AxisAngle (find-package "FANUC_MOVEIT")))
(unless (find-package "FANUC_MOVEIT::AXISANGLE")
  (make-package "FANUC_MOVEIT::AXISANGLE"))

(in-package "ROS")
;;//! \htmlinclude AxisAngle.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass fanuc_moveit::AxisAngle
  :super ros::object
  :slots (_axis _angle ))

(defmethod fanuc_moveit::AxisAngle
  (:init
   (&key
    ((:axis __axis) (instance geometry_msgs::Vector3 :init))
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _axis __axis)
   (setq _angle (float __angle))
   self)
  (:axis
   (&rest __axis)
   (if (keywordp (car __axis))
       (send* _axis __axis)
     (progn
       (if __axis (setq _axis (car __axis)))
       _axis)))
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _axis
    (send _axis :serialization-length)
    ;; float32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _axis
       (send _axis :serialize s)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _axis
     (send _axis :deserialize buf ptr-) (incf ptr- (send _axis :serialization-length))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fanuc_moveit::AxisAngle :md5sum-) "ccd1f1765b334728af430dd2d7e79aec")
(setf (get fanuc_moveit::AxisAngle :datatype-) "fanuc_moveit/AxisAngle")
(setf (get fanuc_moveit::AxisAngle :definition-)
      "#This represent a transformation as axis-angle representation

geometry_msgs/Vector3 axis
float32 angle

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



(provide :fanuc_moveit/AxisAngle "ccd1f1765b334728af430dd2d7e79aec")


