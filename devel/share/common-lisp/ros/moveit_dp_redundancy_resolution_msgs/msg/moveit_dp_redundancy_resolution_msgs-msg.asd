
(cl:in-package :asdf)

(defsystem "moveit_dp_redundancy_resolution_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "WorkspaceTrajectory" :depends-on ("_package_WorkspaceTrajectory"))
    (:file "_package_WorkspaceTrajectory" :depends-on ("_package"))
  ))