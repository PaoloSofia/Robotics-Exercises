
(cl:in-package :asdf)

(defsystem "fanuc_kinematics-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ForwardKinematics" :depends-on ("_package_ForwardKinematics"))
    (:file "_package_ForwardKinematics" :depends-on ("_package"))
  ))