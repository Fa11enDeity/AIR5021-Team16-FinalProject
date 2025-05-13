; Auto-generated. Do not edit!


(cl:in-package spark_fetchtea-srv)


;//! \htmlinclude scene-request.msg.html

(cl:defclass <scene-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (param
    :reader param
    :initarg :param
    :type cl:string
    :initform ""))
)

(cl:defclass scene-request (<scene-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <scene-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'scene-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spark_fetchtea-srv:<scene-request> is deprecated: use spark_fetchtea-srv:scene-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <scene-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_fetchtea-srv:type-val is deprecated.  Use spark_fetchtea-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'param-val :lambda-list '(m))
(cl:defmethod param-val ((m <scene-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_fetchtea-srv:param-val is deprecated.  Use spark_fetchtea-srv:param instead.")
  (param m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<scene-request>)))
    "Constants for message type '<scene-request>"
  '((:END . 0)
    (:RUN . 1)
    (:PEND . 2)
    (:SEARCH . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'scene-request)))
    "Constants for message type 'scene-request"
  '((:END . 0)
    (:RUN . 1)
    (:PEND . 2)
    (:SEARCH . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <scene-request>) ostream)
  "Serializes a message object of type '<scene-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'param))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'param))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <scene-request>) istream)
  "Deserializes a message object of type '<scene-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'param) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<scene-request>)))
  "Returns string type for a service object of type '<scene-request>"
  "spark_fetchtea/sceneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'scene-request)))
  "Returns string type for a service object of type 'scene-request"
  "spark_fetchtea/sceneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<scene-request>)))
  "Returns md5sum for a message object of type '<scene-request>"
  "db8f4e4997dce45d9d28ca5947e2928a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'scene-request)))
  "Returns md5sum for a message object of type 'scene-request"
  "db8f4e4997dce45d9d28ca5947e2928a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<scene-request>)))
  "Returns full string definition for message of type '<scene-request>"
  (cl:format cl:nil "uint8 END = 0~%uint8 RUN  = 1~%uint8 PEND = 2~%uint8 SEARCH  = 3~%~%uint8 type~%string param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'scene-request)))
  "Returns full string definition for message of type 'scene-request"
  (cl:format cl:nil "uint8 END = 0~%uint8 RUN  = 1~%uint8 PEND = 2~%uint8 SEARCH  = 3~%~%uint8 type~%string param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <scene-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'param))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <scene-request>))
  "Converts a ROS message object to a list"
  (cl:list 'scene-request
    (cl:cons ':type (type msg))
    (cl:cons ':param (param msg))
))
;//! \htmlinclude scene-response.msg.html

(cl:defclass <scene-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass scene-response (<scene-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <scene-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'scene-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spark_fetchtea-srv:<scene-response> is deprecated: use spark_fetchtea-srv:scene-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <scene-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_fetchtea-srv:status-val is deprecated.  Use spark_fetchtea-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<scene-response>)))
    "Constants for message type '<scene-response>"
  '((:SUCCESS . 0)
    (:RUNNING . 1)
    (:PENDING . 2)
    (:FAILURE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'scene-response)))
    "Constants for message type 'scene-response"
  '((:SUCCESS . 0)
    (:RUNNING . 1)
    (:PENDING . 2)
    (:FAILURE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <scene-response>) ostream)
  "Serializes a message object of type '<scene-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <scene-response>) istream)
  "Deserializes a message object of type '<scene-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<scene-response>)))
  "Returns string type for a service object of type '<scene-response>"
  "spark_fetchtea/sceneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'scene-response)))
  "Returns string type for a service object of type 'scene-response"
  "spark_fetchtea/sceneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<scene-response>)))
  "Returns md5sum for a message object of type '<scene-response>"
  "db8f4e4997dce45d9d28ca5947e2928a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'scene-response)))
  "Returns md5sum for a message object of type 'scene-response"
  "db8f4e4997dce45d9d28ca5947e2928a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<scene-response>)))
  "Returns full string definition for message of type '<scene-response>"
  (cl:format cl:nil "uint8 SUCCESS = 0~%uint8 RUNNING  = 1~%uint8 PENDING = 2~%uint8 FAILURE  = 3~%~%uint8 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'scene-response)))
  "Returns full string definition for message of type 'scene-response"
  (cl:format cl:nil "uint8 SUCCESS = 0~%uint8 RUNNING  = 1~%uint8 PENDING = 2~%uint8 FAILURE  = 3~%~%uint8 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <scene-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <scene-response>))
  "Converts a ROS message object to a list"
  (cl:list 'scene-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'scene)))
  'scene-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'scene)))
  'scene-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'scene)))
  "Returns string type for a service object of type '<scene>"
  "spark_fetchtea/scene")