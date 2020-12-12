
(cl:in-package :asdf)

(defsystem "moveit_dp_redundancy_resolution_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :moveit_dp_redundancy_resolution_msgs-msg
               :moveit_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GetOptimizedJointsTrajectory" :depends-on ("_package_GetOptimizedJointsTrajectory"))
    (:file "_package_GetOptimizedJointsTrajectory" :depends-on ("_package"))
  ))