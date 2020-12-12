;; Auto-generated. Do not edit!


(when (boundp 'fanuc_kinematics::ForwardKinematics)
  (if (not (find-package "FANUC_KINEMATICS"))
    (make-package "FANUC_KINEMATICS"))
  (shadow 'ForwardKinematics (find-package "FANUC_KINEMATICS")))
(unless (find-package "FANUC_KINEMATICS::FORWARDKINEMATICS")
  (make-package "FANUC_KINEMATICS::FORWARDKINEMATICS"))
(unless (find-package "FANUC_KINEMATICS::FORWARDKINEMATICSREQUEST")
  (make-package "FANUC_KINEMATICS::FORWARDKINEMATICSREQUEST"))
(unless (find-package "FANUC_KINEMATICS::FORWARDKINEMATICSRESPONSE")
  (make-package "FANUC_KINEMATICS::FORWARDKINEMATICSRESPONSE"))

(in-package "ROS")





(defclass fanuc_kinematics::ForwardKinematicsRequest
  :super ros::object
  :slots (_link_name ))

(defmethod fanuc_kinematics::ForwardKinematicsRequest
  (:init
   (&key
    ((:link_name __link_name) "")
    )
   (send-super :init)
   (setq _link_name (string __link_name))
   self)
  (:link_name
   (&optional __link_name)
   (if __link_name (setq _link_name __link_name)) _link_name)
  (:serialization-length
   ()
   (+
    ;; string _link_name
    4 (length _link_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _link_name
       (write-long (length _link_name) s) (princ _link_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _link_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass fanuc_kinematics::ForwardKinematicsResponse
  :super ros::object
  :slots (_translation _rotation ))

(defmethod fanuc_kinematics::ForwardKinematicsResponse
  (:init
   (&key
    ((:translation __translation) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rotation __rotation) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _translation __translation)
   (setq _rotation __rotation)
   self)
  (:translation
   (&optional __translation)
   (if __translation (setq _translation __translation)) _translation)
  (:rotation
   (&optional __rotation)
   (if __rotation (setq _rotation __rotation)) _rotation)
  (:serialization-length
   ()
   (+
    ;; float32[] _translation
    (* 4    (length _translation)) 4
    ;; float32[] _rotation
    (* 4    (length _rotation)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _translation
     (write-long (length _translation) s)
     (dotimes (i (length _translation))
       (sys::poke (elt _translation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _rotation
     (write-long (length _rotation) s)
     (dotimes (i (length _rotation))
       (sys::poke (elt _rotation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _translation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _translation (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _translation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
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

(defclass fanuc_kinematics::ForwardKinematics
  :super ros::object
  :slots ())

(setf (get fanuc_kinematics::ForwardKinematics :md5sum-) "7878278dc9e10f5c8ed44003c357b811")
(setf (get fanuc_kinematics::ForwardKinematics :datatype-) "fanuc_kinematics/ForwardKinematics")
(setf (get fanuc_kinematics::ForwardKinematics :request) fanuc_kinematics::ForwardKinematicsRequest)
(setf (get fanuc_kinematics::ForwardKinematics :response) fanuc_kinematics::ForwardKinematicsResponse)

(defmethod fanuc_kinematics::ForwardKinematicsRequest
  (:response () (instance fanuc_kinematics::ForwardKinematicsResponse :init)))

(setf (get fanuc_kinematics::ForwardKinematicsRequest :md5sum-) "7878278dc9e10f5c8ed44003c357b811")
(setf (get fanuc_kinematics::ForwardKinematicsRequest :datatype-) "fanuc_kinematics/ForwardKinematicsRequest")
(setf (get fanuc_kinematics::ForwardKinematicsRequest :definition-)
      "string link_name
---
float32[] translation
float32[] rotation

")

(setf (get fanuc_kinematics::ForwardKinematicsResponse :md5sum-) "7878278dc9e10f5c8ed44003c357b811")
(setf (get fanuc_kinematics::ForwardKinematicsResponse :datatype-) "fanuc_kinematics/ForwardKinematicsResponse")
(setf (get fanuc_kinematics::ForwardKinematicsResponse :definition-)
      "string link_name
---
float32[] translation
float32[] rotation

")



(provide :fanuc_kinematics/ForwardKinematics "7878278dc9e10f5c8ed44003c357b811")


