;; Auto-generated. Do not edit!


(when (boundp 'fanuc_kinematics::JointAnglesArray)
  (if (not (find-package "FANUC_KINEMATICS"))
    (make-package "FANUC_KINEMATICS"))
  (shadow 'JointAnglesArray (find-package "FANUC_KINEMATICS")))
(unless (find-package "FANUC_KINEMATICS::JOINTANGLESARRAY")
  (make-package "FANUC_KINEMATICS::JOINTANGLESARRAY"))

(in-package "ROS")
;;//! \htmlinclude JointAnglesArray.msg.html


(defclass fanuc_kinematics::JointAnglesArray
  :super ros::object
  :slots (_array ))

(defmethod fanuc_kinematics::JointAnglesArray
  (:init
   (&key
    ((:array __array) ())
    )
   (send-super :init)
   (setq _array __array)
   self)
  (:array
   (&rest __array)
   (if (keywordp (car __array))
       (send* _array __array)
     (progn
       (if __array (setq _array (car __array)))
       _array)))
  (:serialization-length
   ()
   (+
    ;; fanuc_kinematics/JointAngles[] _array
    (apply #'+ (send-all _array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fanuc_kinematics/JointAngles[] _array
     (write-long (length _array) s)
     (dolist (elem _array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fanuc_kinematics/JointAngles[] _array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _array (let (r) (dotimes (i n) (push (instance fanuc_kinematics::JointAngles :init) r)) r))
     (dolist (elem- _array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get fanuc_kinematics::JointAnglesArray :md5sum-) "23f8d77e3668a9f9844ada86c754258b")
(setf (get fanuc_kinematics::JointAnglesArray :datatype-) "fanuc_kinematics/JointAnglesArray")
(setf (get fanuc_kinematics::JointAnglesArray :definition-)
      "# Represent an array of a joint angles' set.
JointAngles[] array
================================================================================
MSG: fanuc_kinematics/JointAngles
# Represent a set of joint angles
float64[] joint_angles
")



(provide :fanuc_kinematics/JointAnglesArray "23f8d77e3668a9f9844ada86c754258b")


