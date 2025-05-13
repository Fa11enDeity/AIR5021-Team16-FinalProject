;; Auto-generated. Do not edit!


(when (boundp 'spark_base::SparkBaseDock)
  (if (not (find-package "SPARK_BASE"))
    (make-package "SPARK_BASE"))
  (shadow 'SparkBaseDock (find-package "SPARK_BASE")))
(unless (find-package "SPARK_BASE::SPARKBASEDOCK")
  (make-package "SPARK_BASE::SPARKBASEDOCK"))

(in-package "ROS")
;;//! \htmlinclude SparkBaseDock.msg.html


(defclass spark_base::SparkBaseDock
  :super ros::object
  :slots (_search_dock _touch_charge _plug_charge _dock_dir_left _dock_dir_right _dock_dir_front _dock_dir_BACK ))

(defmethod spark_base::SparkBaseDock
  (:init
   (&key
    ((:search_dock __search_dock) nil)
    ((:touch_charge __touch_charge) nil)
    ((:plug_charge __plug_charge) nil)
    ((:dock_dir_left __dock_dir_left) nil)
    ((:dock_dir_right __dock_dir_right) nil)
    ((:dock_dir_front __dock_dir_front) nil)
    ((:dock_dir_BACK __dock_dir_BACK) nil)
    )
   (send-super :init)
   (setq _search_dock __search_dock)
   (setq _touch_charge __touch_charge)
   (setq _plug_charge __plug_charge)
   (setq _dock_dir_left __dock_dir_left)
   (setq _dock_dir_right __dock_dir_right)
   (setq _dock_dir_front __dock_dir_front)
   (setq _dock_dir_BACK __dock_dir_BACK)
   self)
  (:search_dock
   (&optional (__search_dock :null))
   (if (not (eq __search_dock :null)) (setq _search_dock __search_dock)) _search_dock)
  (:touch_charge
   (&optional (__touch_charge :null))
   (if (not (eq __touch_charge :null)) (setq _touch_charge __touch_charge)) _touch_charge)
  (:plug_charge
   (&optional (__plug_charge :null))
   (if (not (eq __plug_charge :null)) (setq _plug_charge __plug_charge)) _plug_charge)
  (:dock_dir_left
   (&optional (__dock_dir_left :null))
   (if (not (eq __dock_dir_left :null)) (setq _dock_dir_left __dock_dir_left)) _dock_dir_left)
  (:dock_dir_right
   (&optional (__dock_dir_right :null))
   (if (not (eq __dock_dir_right :null)) (setq _dock_dir_right __dock_dir_right)) _dock_dir_right)
  (:dock_dir_front
   (&optional (__dock_dir_front :null))
   (if (not (eq __dock_dir_front :null)) (setq _dock_dir_front __dock_dir_front)) _dock_dir_front)
  (:dock_dir_BACK
   (&optional (__dock_dir_BACK :null))
   (if (not (eq __dock_dir_BACK :null)) (setq _dock_dir_BACK __dock_dir_BACK)) _dock_dir_BACK)
  (:serialization-length
   ()
   (+
    ;; bool _search_dock
    1
    ;; bool _touch_charge
    1
    ;; bool _plug_charge
    1
    ;; bool _dock_dir_left
    1
    ;; bool _dock_dir_right
    1
    ;; bool _dock_dir_front
    1
    ;; bool _dock_dir_BACK
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _search_dock
       (if _search_dock (write-byte -1 s) (write-byte 0 s))
     ;; bool _touch_charge
       (if _touch_charge (write-byte -1 s) (write-byte 0 s))
     ;; bool _plug_charge
       (if _plug_charge (write-byte -1 s) (write-byte 0 s))
     ;; bool _dock_dir_left
       (if _dock_dir_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _dock_dir_right
       (if _dock_dir_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _dock_dir_front
       (if _dock_dir_front (write-byte -1 s) (write-byte 0 s))
     ;; bool _dock_dir_BACK
       (if _dock_dir_BACK (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _search_dock
     (setq _search_dock (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _touch_charge
     (setq _touch_charge (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _plug_charge
     (setq _plug_charge (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _dock_dir_left
     (setq _dock_dir_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _dock_dir_right
     (setq _dock_dir_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _dock_dir_front
     (setq _dock_dir_front (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _dock_dir_BACK
     (setq _dock_dir_BACK (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get spark_base::SparkBaseDock :md5sum-) "af3cc2d3264fd6c34b48ddc58b42fe5c")
(setf (get spark_base::SparkBaseDock :datatype-) "spark_base/SparkBaseDock")
(setf (get spark_base::SparkBaseDock :definition-)
      "bool search_dock
bool touch_charge
bool plug_charge

bool dock_dir_left
bool dock_dir_right
bool dock_dir_front
bool dock_dir_BACK





")



(provide :spark_base/SparkBaseDock "af3cc2d3264fd6c34b48ddc58b42fe5c")


