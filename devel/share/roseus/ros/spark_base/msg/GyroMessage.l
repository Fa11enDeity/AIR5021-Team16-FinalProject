;; Auto-generated. Do not edit!


(when (boundp 'spark_base::GyroMessage)
  (if (not (find-package "SPARK_BASE"))
    (make-package "SPARK_BASE"))
  (shadow 'GyroMessage (find-package "SPARK_BASE")))
(unless (find-package "SPARK_BASE::GYROMESSAGE")
  (make-package "SPARK_BASE::GYROMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude GyroMessage.msg.html


(defclass spark_base::GyroMessage
  :super ros::object
  :slots (_acvx _acvy _acvz _anvx _anvy _anvz _roll _pitch _yaw _bx _by _bz ))

(defmethod spark_base::GyroMessage
  (:init
   (&key
    ((:acvx __acvx) 0.0)
    ((:acvy __acvy) 0.0)
    ((:acvz __acvz) 0.0)
    ((:anvx __anvx) 0.0)
    ((:anvy __anvy) 0.0)
    ((:anvz __anvz) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:bx __bx) 0.0)
    ((:by __by) 0.0)
    ((:bz __bz) 0.0)
    )
   (send-super :init)
   (setq _acvx (float __acvx))
   (setq _acvy (float __acvy))
   (setq _acvz (float __acvz))
   (setq _anvx (float __anvx))
   (setq _anvy (float __anvy))
   (setq _anvz (float __anvz))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _bx (float __bx))
   (setq _by (float __by))
   (setq _bz (float __bz))
   self)
  (:acvx
   (&optional __acvx)
   (if __acvx (setq _acvx __acvx)) _acvx)
  (:acvy
   (&optional __acvy)
   (if __acvy (setq _acvy __acvy)) _acvy)
  (:acvz
   (&optional __acvz)
   (if __acvz (setq _acvz __acvz)) _acvz)
  (:anvx
   (&optional __anvx)
   (if __anvx (setq _anvx __anvx)) _anvx)
  (:anvy
   (&optional __anvy)
   (if __anvy (setq _anvy __anvy)) _anvy)
  (:anvz
   (&optional __anvz)
   (if __anvz (setq _anvz __anvz)) _anvz)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:bx
   (&optional __bx)
   (if __bx (setq _bx __bx)) _bx)
  (:by
   (&optional __by)
   (if __by (setq _by __by)) _by)
  (:bz
   (&optional __bz)
   (if __bz (setq _bz __bz)) _bz)
  (:serialization-length
   ()
   (+
    ;; float32 _acvx
    4
    ;; float32 _acvy
    4
    ;; float32 _acvz
    4
    ;; float32 _anvx
    4
    ;; float32 _anvy
    4
    ;; float32 _anvz
    4
    ;; float32 _roll
    4
    ;; float32 _pitch
    4
    ;; float32 _yaw
    4
    ;; float32 _bx
    4
    ;; float32 _by
    4
    ;; float32 _bz
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _acvx
       (sys::poke _acvx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acvy
       (sys::poke _acvy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acvz
       (sys::poke _acvz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _anvx
       (sys::poke _anvx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _anvy
       (sys::poke _anvy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _anvz
       (sys::poke _anvz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bx
       (sys::poke _bx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _by
       (sys::poke _by (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bz
       (sys::poke _bz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _acvx
     (setq _acvx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acvy
     (setq _acvy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acvz
     (setq _acvz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _anvx
     (setq _anvx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _anvy
     (setq _anvy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _anvz
     (setq _anvz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bx
     (setq _bx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _by
     (setq _by (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bz
     (setq _bz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get spark_base::GyroMessage :md5sum-) "3bc41d895c9f0f7df678a987f8d8ab7a")
(setf (get spark_base::GyroMessage :datatype-) "spark_base/GyroMessage")
(setf (get spark_base::GyroMessage :definition-)
      "
# This expresses
#加速度　ac
float32  acvx	
float32  acvy
float32  acvz
#角速度　an
float32  anvx
float32  anvy
float32  anvz
#横滚角
float32  roll
#俯仰角
float32  pitch
#航向角
float32  yaw
#磁感应度　b
float32  bx
float32  by
float32  bz

")



(provide :spark_base/GyroMessage "3bc41d895c9f0f7df678a987f8d8ab7a")


