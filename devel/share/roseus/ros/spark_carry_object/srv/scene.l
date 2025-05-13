;; Auto-generated. Do not edit!


(when (boundp 'spark_carry_object::scene)
  (if (not (find-package "SPARK_CARRY_OBJECT"))
    (make-package "SPARK_CARRY_OBJECT"))
  (shadow 'scene (find-package "SPARK_CARRY_OBJECT")))
(unless (find-package "SPARK_CARRY_OBJECT::SCENE")
  (make-package "SPARK_CARRY_OBJECT::SCENE"))
(unless (find-package "SPARK_CARRY_OBJECT::SCENEREQUEST")
  (make-package "SPARK_CARRY_OBJECT::SCENEREQUEST"))
(unless (find-package "SPARK_CARRY_OBJECT::SCENERESPONSE")
  (make-package "SPARK_CARRY_OBJECT::SCENERESPONSE"))

(in-package "ROS")





(intern "*END*" (find-package "SPARK_CARRY_OBJECT::SCENEREQUEST"))
(shadow '*END* (find-package "SPARK_CARRY_OBJECT::SCENEREQUEST"))
(defconstant spark_carry_object::sceneRequest::*END* 0)
(intern "*RUN*" (find-package "SPARK_CARRY_OBJECT::SCENEREQUEST"))
(shadow '*RUN* (find-package "SPARK_CARRY_OBJECT::SCENEREQUEST"))
(defconstant spark_carry_object::sceneRequest::*RUN* 1)
(intern "*PEND*" (find-package "SPARK_CARRY_OBJECT::SCENEREQUEST"))
(shadow '*PEND* (find-package "SPARK_CARRY_OBJECT::SCENEREQUEST"))
(defconstant spark_carry_object::sceneRequest::*PEND* 2)
(intern "*SEARCH*" (find-package "SPARK_CARRY_OBJECT::SCENEREQUEST"))
(shadow '*SEARCH* (find-package "SPARK_CARRY_OBJECT::SCENEREQUEST"))
(defconstant spark_carry_object::sceneRequest::*SEARCH* 3)

(defun spark_carry_object::sceneRequest-to-symbol (const)
  (cond
        ((= const 0) 'spark_carry_object::sceneRequest::*END*)
        ((= const 1) 'spark_carry_object::sceneRequest::*RUN*)
        ((= const 2) 'spark_carry_object::sceneRequest::*PEND*)
        ((= const 3) 'spark_carry_object::sceneRequest::*SEARCH*)
        (t nil)))

(defclass spark_carry_object::sceneRequest
  :super ros::object
  :slots (_type _param ))

(defmethod spark_carry_object::sceneRequest
  (:init
   (&key
    ((:type __type) 0)
    ((:param __param) "")
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _param (string __param))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:param
   (&optional __param)
   (if __param (setq _param __param)) _param)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; string _param
    4 (length _param)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; string _param
       (write-long (length _param) s) (princ _param s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _param
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(intern "*SUCCESS*" (find-package "SPARK_CARRY_OBJECT::SCENERESPONSE"))
(shadow '*SUCCESS* (find-package "SPARK_CARRY_OBJECT::SCENERESPONSE"))
(defconstant spark_carry_object::sceneResponse::*SUCCESS* 0)
(intern "*RUNNING*" (find-package "SPARK_CARRY_OBJECT::SCENERESPONSE"))
(shadow '*RUNNING* (find-package "SPARK_CARRY_OBJECT::SCENERESPONSE"))
(defconstant spark_carry_object::sceneResponse::*RUNNING* 1)
(intern "*PENDING*" (find-package "SPARK_CARRY_OBJECT::SCENERESPONSE"))
(shadow '*PENDING* (find-package "SPARK_CARRY_OBJECT::SCENERESPONSE"))
(defconstant spark_carry_object::sceneResponse::*PENDING* 2)
(intern "*FAILURE*" (find-package "SPARK_CARRY_OBJECT::SCENERESPONSE"))
(shadow '*FAILURE* (find-package "SPARK_CARRY_OBJECT::SCENERESPONSE"))
(defconstant spark_carry_object::sceneResponse::*FAILURE* 3)

(defun spark_carry_object::sceneResponse-to-symbol (const)
  (cond
        ((= const 0) 'spark_carry_object::sceneResponse::*SUCCESS*)
        ((= const 1) 'spark_carry_object::sceneResponse::*RUNNING*)
        ((= const 2) 'spark_carry_object::sceneResponse::*PENDING*)
        ((= const 3) 'spark_carry_object::sceneResponse::*FAILURE*)
        (t nil)))

(defclass spark_carry_object::sceneResponse
  :super ros::object
  :slots (_status ))

(defmethod spark_carry_object::sceneResponse
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

(defclass spark_carry_object::scene
  :super ros::object
  :slots ())

(setf (get spark_carry_object::scene :md5sum-) "db8f4e4997dce45d9d28ca5947e2928a")
(setf (get spark_carry_object::scene :datatype-) "spark_carry_object/scene")
(setf (get spark_carry_object::scene :request) spark_carry_object::sceneRequest)
(setf (get spark_carry_object::scene :response) spark_carry_object::sceneResponse)

(defmethod spark_carry_object::sceneRequest
  (:response () (instance spark_carry_object::sceneResponse :init)))

(setf (get spark_carry_object::sceneRequest :md5sum-) "db8f4e4997dce45d9d28ca5947e2928a")
(setf (get spark_carry_object::sceneRequest :datatype-) "spark_carry_object/sceneRequest")
(setf (get spark_carry_object::sceneRequest :definition-)
      "uint8 END = 0
uint8 RUN  = 1
uint8 PEND = 2
uint8 SEARCH  = 3

uint8 type
string param
---
uint8 SUCCESS = 0
uint8 RUNNING  = 1
uint8 PENDING = 2
uint8 FAILURE  = 3

uint8 status

")

(setf (get spark_carry_object::sceneResponse :md5sum-) "db8f4e4997dce45d9d28ca5947e2928a")
(setf (get spark_carry_object::sceneResponse :datatype-) "spark_carry_object/sceneResponse")
(setf (get spark_carry_object::sceneResponse :definition-)
      "uint8 END = 0
uint8 RUN  = 1
uint8 PEND = 2
uint8 SEARCH  = 3

uint8 type
string param
---
uint8 SUCCESS = 0
uint8 RUNNING  = 1
uint8 PENDING = 2
uint8 FAILURE  = 3

uint8 status

")



(provide :spark_carry_object/scene "db8f4e4997dce45d9d28ca5947e2928a")


