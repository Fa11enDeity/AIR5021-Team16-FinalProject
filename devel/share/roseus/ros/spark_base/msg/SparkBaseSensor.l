;; Auto-generated. Do not edit!


(when (boundp 'spark_base::SparkBaseSensor)
  (if (not (find-package "SPARK_BASE"))
    (make-package "SPARK_BASE"))
  (shadow 'SparkBaseSensor (find-package "SPARK_BASE")))
(unless (find-package "SPARK_BASE::SPARKBASESENSOR")
  (make-package "SPARK_BASE::SPARKBASESENSOR"))

(in-package "ROS")
;;//! \htmlinclude SparkBaseSensor.msg.html


(defclass spark_base::SparkBaseSensor
  :super ros::object
  :slots (_ir_bumper_left _ir_bumper_right _ir_bumper_front_left _ir_bumper_front_right _ir_bumper_front _ir_bumper_back_left _ir_bumper_back_right _cliff_left _cliff_right _cliff_front_left _cliff_front_right _cliff_back_left _cliff_back_right _wheel_drop_left _wheel_drop_right _wheel_over_current_left _wheel_over_current_right ))

(defmethod spark_base::SparkBaseSensor
  (:init
   (&key
    ((:ir_bumper_left __ir_bumper_left) nil)
    ((:ir_bumper_right __ir_bumper_right) nil)
    ((:ir_bumper_front_left __ir_bumper_front_left) nil)
    ((:ir_bumper_front_right __ir_bumper_front_right) nil)
    ((:ir_bumper_front __ir_bumper_front) nil)
    ((:ir_bumper_back_left __ir_bumper_back_left) nil)
    ((:ir_bumper_back_right __ir_bumper_back_right) nil)
    ((:cliff_left __cliff_left) nil)
    ((:cliff_right __cliff_right) nil)
    ((:cliff_front_left __cliff_front_left) nil)
    ((:cliff_front_right __cliff_front_right) nil)
    ((:cliff_back_left __cliff_back_left) nil)
    ((:cliff_back_right __cliff_back_right) nil)
    ((:wheel_drop_left __wheel_drop_left) nil)
    ((:wheel_drop_right __wheel_drop_right) nil)
    ((:wheel_over_current_left __wheel_over_current_left) nil)
    ((:wheel_over_current_right __wheel_over_current_right) nil)
    )
   (send-super :init)
   (setq _ir_bumper_left __ir_bumper_left)
   (setq _ir_bumper_right __ir_bumper_right)
   (setq _ir_bumper_front_left __ir_bumper_front_left)
   (setq _ir_bumper_front_right __ir_bumper_front_right)
   (setq _ir_bumper_front __ir_bumper_front)
   (setq _ir_bumper_back_left __ir_bumper_back_left)
   (setq _ir_bumper_back_right __ir_bumper_back_right)
   (setq _cliff_left __cliff_left)
   (setq _cliff_right __cliff_right)
   (setq _cliff_front_left __cliff_front_left)
   (setq _cliff_front_right __cliff_front_right)
   (setq _cliff_back_left __cliff_back_left)
   (setq _cliff_back_right __cliff_back_right)
   (setq _wheel_drop_left __wheel_drop_left)
   (setq _wheel_drop_right __wheel_drop_right)
   (setq _wheel_over_current_left __wheel_over_current_left)
   (setq _wheel_over_current_right __wheel_over_current_right)
   self)
  (:ir_bumper_left
   (&optional (__ir_bumper_left :null))
   (if (not (eq __ir_bumper_left :null)) (setq _ir_bumper_left __ir_bumper_left)) _ir_bumper_left)
  (:ir_bumper_right
   (&optional (__ir_bumper_right :null))
   (if (not (eq __ir_bumper_right :null)) (setq _ir_bumper_right __ir_bumper_right)) _ir_bumper_right)
  (:ir_bumper_front_left
   (&optional (__ir_bumper_front_left :null))
   (if (not (eq __ir_bumper_front_left :null)) (setq _ir_bumper_front_left __ir_bumper_front_left)) _ir_bumper_front_left)
  (:ir_bumper_front_right
   (&optional (__ir_bumper_front_right :null))
   (if (not (eq __ir_bumper_front_right :null)) (setq _ir_bumper_front_right __ir_bumper_front_right)) _ir_bumper_front_right)
  (:ir_bumper_front
   (&optional (__ir_bumper_front :null))
   (if (not (eq __ir_bumper_front :null)) (setq _ir_bumper_front __ir_bumper_front)) _ir_bumper_front)
  (:ir_bumper_back_left
   (&optional (__ir_bumper_back_left :null))
   (if (not (eq __ir_bumper_back_left :null)) (setq _ir_bumper_back_left __ir_bumper_back_left)) _ir_bumper_back_left)
  (:ir_bumper_back_right
   (&optional (__ir_bumper_back_right :null))
   (if (not (eq __ir_bumper_back_right :null)) (setq _ir_bumper_back_right __ir_bumper_back_right)) _ir_bumper_back_right)
  (:cliff_left
   (&optional (__cliff_left :null))
   (if (not (eq __cliff_left :null)) (setq _cliff_left __cliff_left)) _cliff_left)
  (:cliff_right
   (&optional (__cliff_right :null))
   (if (not (eq __cliff_right :null)) (setq _cliff_right __cliff_right)) _cliff_right)
  (:cliff_front_left
   (&optional (__cliff_front_left :null))
   (if (not (eq __cliff_front_left :null)) (setq _cliff_front_left __cliff_front_left)) _cliff_front_left)
  (:cliff_front_right
   (&optional (__cliff_front_right :null))
   (if (not (eq __cliff_front_right :null)) (setq _cliff_front_right __cliff_front_right)) _cliff_front_right)
  (:cliff_back_left
   (&optional (__cliff_back_left :null))
   (if (not (eq __cliff_back_left :null)) (setq _cliff_back_left __cliff_back_left)) _cliff_back_left)
  (:cliff_back_right
   (&optional (__cliff_back_right :null))
   (if (not (eq __cliff_back_right :null)) (setq _cliff_back_right __cliff_back_right)) _cliff_back_right)
  (:wheel_drop_left
   (&optional (__wheel_drop_left :null))
   (if (not (eq __wheel_drop_left :null)) (setq _wheel_drop_left __wheel_drop_left)) _wheel_drop_left)
  (:wheel_drop_right
   (&optional (__wheel_drop_right :null))
   (if (not (eq __wheel_drop_right :null)) (setq _wheel_drop_right __wheel_drop_right)) _wheel_drop_right)
  (:wheel_over_current_left
   (&optional (__wheel_over_current_left :null))
   (if (not (eq __wheel_over_current_left :null)) (setq _wheel_over_current_left __wheel_over_current_left)) _wheel_over_current_left)
  (:wheel_over_current_right
   (&optional (__wheel_over_current_right :null))
   (if (not (eq __wheel_over_current_right :null)) (setq _wheel_over_current_right __wheel_over_current_right)) _wheel_over_current_right)
  (:serialization-length
   ()
   (+
    ;; bool _ir_bumper_left
    1
    ;; bool _ir_bumper_right
    1
    ;; bool _ir_bumper_front_left
    1
    ;; bool _ir_bumper_front_right
    1
    ;; bool _ir_bumper_front
    1
    ;; bool _ir_bumper_back_left
    1
    ;; bool _ir_bumper_back_right
    1
    ;; bool _cliff_left
    1
    ;; bool _cliff_right
    1
    ;; bool _cliff_front_left
    1
    ;; bool _cliff_front_right
    1
    ;; bool _cliff_back_left
    1
    ;; bool _cliff_back_right
    1
    ;; bool _wheel_drop_left
    1
    ;; bool _wheel_drop_right
    1
    ;; bool _wheel_over_current_left
    1
    ;; bool _wheel_over_current_right
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ir_bumper_left
       (if _ir_bumper_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _ir_bumper_right
       (if _ir_bumper_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _ir_bumper_front_left
       (if _ir_bumper_front_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _ir_bumper_front_right
       (if _ir_bumper_front_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _ir_bumper_front
       (if _ir_bumper_front (write-byte -1 s) (write-byte 0 s))
     ;; bool _ir_bumper_back_left
       (if _ir_bumper_back_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _ir_bumper_back_right
       (if _ir_bumper_back_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _cliff_left
       (if _cliff_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _cliff_right
       (if _cliff_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _cliff_front_left
       (if _cliff_front_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _cliff_front_right
       (if _cliff_front_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _cliff_back_left
       (if _cliff_back_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _cliff_back_right
       (if _cliff_back_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _wheel_drop_left
       (if _wheel_drop_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _wheel_drop_right
       (if _wheel_drop_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _wheel_over_current_left
       (if _wheel_over_current_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _wheel_over_current_right
       (if _wheel_over_current_right (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ir_bumper_left
     (setq _ir_bumper_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ir_bumper_right
     (setq _ir_bumper_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ir_bumper_front_left
     (setq _ir_bumper_front_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ir_bumper_front_right
     (setq _ir_bumper_front_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ir_bumper_front
     (setq _ir_bumper_front (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ir_bumper_back_left
     (setq _ir_bumper_back_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ir_bumper_back_right
     (setq _ir_bumper_back_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cliff_left
     (setq _cliff_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cliff_right
     (setq _cliff_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cliff_front_left
     (setq _cliff_front_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cliff_front_right
     (setq _cliff_front_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cliff_back_left
     (setq _cliff_back_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cliff_back_right
     (setq _cliff_back_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wheel_drop_left
     (setq _wheel_drop_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wheel_drop_right
     (setq _wheel_drop_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wheel_over_current_left
     (setq _wheel_over_current_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wheel_over_current_right
     (setq _wheel_over_current_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get spark_base::SparkBaseSensor :md5sum-) "fa940530bef575d46667aefc9eff8eff")
(setf (get spark_base::SparkBaseSensor :datatype-) "spark_base/SparkBaseSensor")
(setf (get spark_base::SparkBaseSensor :definition-)
      "bool ir_bumper_left
bool ir_bumper_right
bool ir_bumper_front_left
bool ir_bumper_front_right
bool ir_bumper_front
bool ir_bumper_back_left
bool ir_bumper_back_right


bool cliff_left
bool cliff_right
bool cliff_front_left
bool cliff_front_right
bool cliff_back_left
bool cliff_back_right

bool wheel_drop_left
bool wheel_drop_right
bool wheel_over_current_left
bool wheel_over_current_right

")



(provide :spark_base/SparkBaseSensor "fa940530bef575d46667aefc9eff8eff")


