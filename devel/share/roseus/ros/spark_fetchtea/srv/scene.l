;; Auto-generated. Do not edit!


(when (boundp 'spark_fetchtea::scene)
  (if (not (find-package "SPARK_FETCHTEA"))
    (make-package "SPARK_FETCHTEA"))
  (shadow 'scene (find-package "SPARK_FETCHTEA")))
(unless (find-package "SPARK_FETCHTEA::SCENE")
  (make-package "SPARK_FETCHTEA::SCENE"))
(unless (find-package "SPARK_FETCHTEA::SCENEREQUEST")
  (make-package "SPARK_FETCHTEA::SCENEREQUEST"))
(unless (find-package "SPARK_FETCHTEA::SCENERESPONSE")
  (make-package "SPARK_FETCHTEA::SCENERESPONSE"))

(in-package "ROS")





(intern "*END*" (find-package "SPARK_FETCHTEA::SCENEREQUEST"))
(shadow '*END* (find-package "SPARK_FETCHTEA::SCENEREQUEST"))
(defconstant spark_fetchtea::sceneRequest::*END* 0)
(intern "*RUN*" (find-package "SPARK_FETCHTEA::SCENEREQUEST"))
(shadow '*RUN* (find-package "SPARK_FETCHTEA::SCENEREQUEST"))
(defconstant spark_fetchtea::sceneRequest::*RUN* 1)
(intern "*PEND*" (find-package "SPARK_FETCHTEA::SCENEREQUEST"))
(shadow '*PEND* (find-package "SPARK_FETCHTEA::SCENEREQUEST"))
(defconstant spark_fetchtea::sceneRequest::*PEND* 2)
(intern "*SEARCH*" (find-package "SPARK_FETCHTEA::SCENEREQUEST"))
(shadow '*SEARCH* (find-package "SPARK_FETCHTEA::SCENEREQUEST"))
(defconstant spark_fetchtea::sceneRequest::*SEARCH* 3)

(defun spark_fetchtea::sceneRequest-to-symbol (const)
  (cond
        ((= const 0) 'spark_fetchtea::sceneRequest::*END*)
        ((= const 1) 'spark_fetchtea::sceneRequest::*RUN*)
        ((= const 2) 'spark_fetchtea::sceneRequest::*PEND*)
        ((= const 3) 'spark_fetchtea::sceneRequest::*SEARCH*)
        (t nil)))

(defclass spark_fetchtea::sceneRequest
  :super ros::object
  :slots (_type _param ))

(defmethod spark_fetchtea::sceneRequest
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

(intern "*SUCCESS*" (find-package "SPARK_FETCHTEA::SCENERESPONSE"))
(shadow '*SUCCESS* (find-package "SPARK_FETCHTEA::SCENERESPONSE"))
(defconstant spark_fetchtea::sceneResponse::*SUCCESS* 0)
(intern "*RUNNING*" (find-package "SPARK_FETCHTEA::SCENERESPONSE"))
(shadow '*RUNNING* (find-package "SPARK_FETCHTEA::SCENERESPONSE"))
(defconstant spark_fetchtea::sceneResponse::*RUNNING* 1)
(intern "*PENDING*" (find-package "SPARK_FETCHTEA::SCENERESPONSE"))
(shadow '*PENDING* (find-package "SPARK_FETCHTEA::SCENERESPONSE"))
(defconstant spark_fetchtea::sceneResponse::*PENDING* 2)
(intern "*FAILURE*" (find-package "SPARK_FETCHTEA::SCENERESPONSE"))
(shadow '*FAILURE* (find-package "SPARK_FETCHTEA::SCENERESPONSE"))
(defconstant spark_fetchtea::sceneResponse::*FAILURE* 3)

(defun spark_fetchtea::sceneResponse-to-symbol (const)
  (cond
        ((= const 0) 'spark_fetchtea::sceneResponse::*SUCCESS*)
        ((= const 1) 'spark_fetchtea::sceneResponse::*RUNNING*)
        ((= const 2) 'spark_fetchtea::sceneResponse::*PENDING*)
        ((= const 3) 'spark_fetchtea::sceneResponse::*FAILURE*)
        (t nil)))

(defclass spark_fetchtea::sceneResponse
  :super ros::object
  :slots (_status ))

(defmethod spark_fetchtea::sceneResponse
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

(defclass spark_fetchtea::scene
  :super ros::object
  :slots ())

(setf (get spark_fetchtea::scene :md5sum-) "db8f4e4997dce45d9d28ca5947e2928a")
(setf (get spark_fetchtea::scene :datatype-) "spark_fetchtea/scene")
(setf (get spark_fetchtea::scene :request) spark_fetchtea::sceneRequest)
(setf (get spark_fetchtea::scene :response) spark_fetchtea::sceneResponse)

(defmethod spark_fetchtea::sceneRequest
  (:response () (instance spark_fetchtea::sceneResponse :init)))

(setf (get spark_fetchtea::sceneRequest :md5sum-) "db8f4e4997dce45d9d28ca5947e2928a")
(setf (get spark_fetchtea::sceneRequest :datatype-) "spark_fetchtea/sceneRequest")
(setf (get spark_fetchtea::sceneRequest :definition-)
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

(setf (get spark_fetchtea::sceneResponse :md5sum-) "db8f4e4997dce45d9d28ca5947e2928a")
(setf (get spark_fetchtea::sceneResponse :datatype-) "spark_fetchtea/sceneResponse")
(setf (get spark_fetchtea::sceneResponse :definition-)
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



(provide :spark_fetchtea/scene "db8f4e4997dce45d9d28ca5947e2928a")


