;; Auto-generated. Do not edit!


(when (boundp 'spark_carry_object::status)
  (if (not (find-package "SPARK_CARRY_OBJECT"))
    (make-package "SPARK_CARRY_OBJECT"))
  (shadow 'status (find-package "SPARK_CARRY_OBJECT")))
(unless (find-package "SPARK_CARRY_OBJECT::STATUS")
  (make-package "SPARK_CARRY_OBJECT::STATUS"))

(in-package "ROS")
;;//! \htmlinclude status.msg.html


(defclass spark_carry_object::status
  :super ros::object
  :slots (_status ))

(defmethod spark_carry_object::status
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get spark_carry_object::status :md5sum-) "284aa12dd9e9e760802ac9f38036ea5e")
(setf (get spark_carry_object::status :datatype-) "spark_carry_object/status")
(setf (get spark_carry_object::status :definition-)
      "uint8 status

")



(provide :spark_carry_object/status "284aa12dd9e9e760802ac9f38036ea5e")


