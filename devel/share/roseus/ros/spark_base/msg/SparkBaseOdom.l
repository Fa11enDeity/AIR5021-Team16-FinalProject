;; Auto-generated. Do not edit!


(when (boundp 'spark_base::SparkBaseOdom)
  (if (not (find-package "SPARK_BASE"))
    (make-package "SPARK_BASE"))
  (shadow 'SparkBaseOdom (find-package "SPARK_BASE")))
(unless (find-package "SPARK_BASE::SPARKBASEODOM")
  (make-package "SPARK_BASE::SPARKBASEODOM"))

(in-package "ROS")
;;//! \htmlinclude SparkBaseOdom.msg.html


(defclass spark_base::SparkBaseOdom
  :super ros::object
  :slots (_x _y _yaw ))

(defmethod spark_base::SparkBaseOdom
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _yaw (float __yaw))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get spark_base::SparkBaseOdom :md5sum-) "47802147045815b06859cca542c21d31")
(setf (get spark_base::SparkBaseOdom :datatype-) "spark_base/SparkBaseOdom")
(setf (get spark_base::SparkBaseOdom :definition-)
      "# return the absolute angular from sparkbase's position （x , y ）, yaw indicate yaw
float32 x
float32 y
float32 yaw

")



(provide :spark_base/SparkBaseOdom "47802147045815b06859cca542c21d31")


