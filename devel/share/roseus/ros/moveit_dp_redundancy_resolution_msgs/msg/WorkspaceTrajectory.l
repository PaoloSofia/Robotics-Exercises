;; Auto-generated. Do not edit!


(when (boundp 'moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory)
  (if (not (find-package "MOVEIT_DP_REDUNDANCY_RESOLUTION_MSGS"))
    (make-package "MOVEIT_DP_REDUNDANCY_RESOLUTION_MSGS"))
  (shadow 'WorkspaceTrajectory (find-package "MOVEIT_DP_REDUNDANCY_RESOLUTION_MSGS")))
(unless (find-package "MOVEIT_DP_REDUNDANCY_RESOLUTION_MSGS::WORKSPACETRAJECTORY")
  (make-package "MOVEIT_DP_REDUNDANCY_RESOLUTION_MSGS::WORKSPACETRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude WorkspaceTrajectory.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory
  :super ros::object
  :slots (_name _waypoints _timestamps ))

(defmethod moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory
  (:init
   (&key
    ((:name __name) "")
    ((:waypoints __waypoints) ())
    ((:timestamps __timestamps) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _waypoints __waypoints)
   (setq _timestamps __timestamps)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:timestamps
   (&optional __timestamps)
   (if __timestamps (setq _timestamps __timestamps)) _timestamps)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Pose[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ;; float64[] _timestamps
    (* 8    (length _timestamps)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Pose[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;; float64[] _timestamps
     (write-long (length _timestamps) s)
     (dotimes (i (length _timestamps))
       (sys::poke (elt _timestamps i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _timestamps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _timestamps (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _timestamps i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory :md5sum-) "c38ed604b3185b492021a162f5450342")
(setf (get moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory :datatype-) "moveit_dp_redundancy_resolution_msgs/WorkspaceTrajectory")
(setf (get moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory :definition-)
      "string name
geometry_msgs/Pose[] waypoints
float64[] timestamps

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :moveit_dp_redundancy_resolution_msgs/WorkspaceTrajectory "c38ed604b3185b492021a162f5450342")


