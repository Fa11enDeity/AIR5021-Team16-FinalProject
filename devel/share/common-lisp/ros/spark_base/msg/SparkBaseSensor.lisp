; Auto-generated. Do not edit!


(cl:in-package spark_base-msg)


;//! \htmlinclude SparkBaseSensor.msg.html

(cl:defclass <SparkBaseSensor> (roslisp-msg-protocol:ros-message)
  ((ir_bumper_left
    :reader ir_bumper_left
    :initarg :ir_bumper_left
    :type cl:boolean
    :initform cl:nil)
   (ir_bumper_right
    :reader ir_bumper_right
    :initarg :ir_bumper_right
    :type cl:boolean
    :initform cl:nil)
   (ir_bumper_front_left
    :reader ir_bumper_front_left
    :initarg :ir_bumper_front_left
    :type cl:boolean
    :initform cl:nil)
   (ir_bumper_front_right
    :reader ir_bumper_front_right
    :initarg :ir_bumper_front_right
    :type cl:boolean
    :initform cl:nil)
   (ir_bumper_front
    :reader ir_bumper_front
    :initarg :ir_bumper_front
    :type cl:boolean
    :initform cl:nil)
   (ir_bumper_back_left
    :reader ir_bumper_back_left
    :initarg :ir_bumper_back_left
    :type cl:boolean
    :initform cl:nil)
   (ir_bumper_back_right
    :reader ir_bumper_back_right
    :initarg :ir_bumper_back_right
    :type cl:boolean
    :initform cl:nil)
   (cliff_left
    :reader cliff_left
    :initarg :cliff_left
    :type cl:boolean
    :initform cl:nil)
   (cliff_right
    :reader cliff_right
    :initarg :cliff_right
    :type cl:boolean
    :initform cl:nil)
   (cliff_front_left
    :reader cliff_front_left
    :initarg :cliff_front_left
    :type cl:boolean
    :initform cl:nil)
   (cliff_front_right
    :reader cliff_front_right
    :initarg :cliff_front_right
    :type cl:boolean
    :initform cl:nil)
   (cliff_back_left
    :reader cliff_back_left
    :initarg :cliff_back_left
    :type cl:boolean
    :initform cl:nil)
   (cliff_back_right
    :reader cliff_back_right
    :initarg :cliff_back_right
    :type cl:boolean
    :initform cl:nil)
   (wheel_drop_left
    :reader wheel_drop_left
    :initarg :wheel_drop_left
    :type cl:boolean
    :initform cl:nil)
   (wheel_drop_right
    :reader wheel_drop_right
    :initarg :wheel_drop_right
    :type cl:boolean
    :initform cl:nil)
   (wheel_over_current_left
    :reader wheel_over_current_left
    :initarg :wheel_over_current_left
    :type cl:boolean
    :initform cl:nil)
   (wheel_over_current_right
    :reader wheel_over_current_right
    :initarg :wheel_over_current_right
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SparkBaseSensor (<SparkBaseSensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SparkBaseSensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SparkBaseSensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spark_base-msg:<SparkBaseSensor> is deprecated: use spark_base-msg:SparkBaseSensor instead.")))

(cl:ensure-generic-function 'ir_bumper_left-val :lambda-list '(m))
(cl:defmethod ir_bumper_left-val ((m <SparkBaseSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:ir_bumper_left-val is deprecated.  Use spark_base-msg:ir_bumper_left instead.")
  (ir_bumper_left m))

(cl:ensure-generic-function 'ir_bumper_right-val :lambda-list '(m))
(cl:defmethod ir_bumper_right-val ((m <SparkBaseSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:ir_bumper_right-val is deprecated.  Use spark_base-msg:ir_bumper_right instead.")
  (ir_bumper_right m))

(cl:ensure-generic-function 'ir_bumper_front_left-val :lambda-list '(m))
(cl:defmethod ir_bumper_front_left-val ((m <SparkBaseSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:ir_bumper_front_left-val is deprecated.  Use spark_base-msg:ir_bumper_front_left instead.")
  (ir_bumper_front_left m))

(cl:ensure-generic-function 'ir_bumper_front_right-val :lambda-list '(m))
(cl:defmethod ir_bumper_front_right-val ((m <SparkBaseSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:ir_bumper_front_right-val is deprecated.  Use spark_base-msg:ir_bumper_front_right instead.")
  (ir_bumper_front_right m))

(cl:ensure-generic-function 'ir_bumper_front-val :lambda-list '(m))
(cl:defmethod ir_bumper_front-val ((m <SparkBaseSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:ir_bumper_front-val is deprecated.  Use spark_base-msg:ir_bumper_front instead.")
  (ir_bumper_front m))

(cl:ensure-generic-function 'ir_bumper_back_left-val :lambda-list '(m))
(cl:defmethod ir_bumper_back_left-val ((m <SparkBaseSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:ir_bumper_back_left-val is deprecated.  Use spark_base-msg:ir_bumper_back_left instead.")
  (ir_bumper_back_left m))

(cl:ensure-generic-function 'ir_bumper_back_right-val :lambda-list '(m))
(cl:defmethod ir_bumper_back_right-val ((m <SparkBaseSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:ir_bumper_back_right-val is deprecated.  Use spark_base-msg:ir_bumper_back_right instead.")
  (ir_bumper_back_right m))

(cl:ensure-generic-function 'cliff_left-val :lambda-list '(m))
(cl:defmethod cliff_left-val ((m <SparkBaseSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:cliff_left-val is deprecated.  Use spark_base-msg:cliff_left instead.")
  (cliff_left m))

(cl:ensure-generic-function 'cliff_right-val :lambda-list '(m))
(cl:defmethod cliff_right-val ((m <SparkBaseSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:cliff_right-val is deprecated.  Use spark_base-msg:cliff_right instead.")
  (cliff_right m))

(cl:ensure-generic-function 'cliff_front_left-val :lambda-list '(m))
(cl:defmethod cliff_front_left-val ((m <SparkBaseSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:cliff_front_left-val is deprecated.  Use spark_base-msg:cliff_front_left instead.")
  (cliff_front_left m))

(cl:ensure-generic-function 'cliff_front_right-val :lambda-list '(m))
(cl:defmethod cliff_front_right-val ((m <SparkBaseSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:cliff_front_right-val is deprecated.  Use spark_base-msg:cliff_front_right instead.")
  (cliff_front_right m))

(cl:ensure-generic-function 'cliff_back_left-val :lambda-list '(m))
(cl:defmethod cliff_back_left-val ((m <SparkBaseSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:cliff_back_left-val is deprecated.  Use spark_base-msg:cliff_back_left instead.")
  (cliff_back_left m))

(cl:ensure-generic-function 'cliff_back_right-val :lambda-list '(m))
(cl:defmethod cliff_back_right-val ((m <SparkBaseSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:cliff_back_right-val is deprecated.  Use spark_base-msg:cliff_back_right instead.")
  (cliff_back_right m))

(cl:ensure-generic-function 'wheel_drop_left-val :lambda-list '(m))
(cl:defmethod wheel_drop_left-val ((m <SparkBaseSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:wheel_drop_left-val is deprecated.  Use spark_base-msg:wheel_drop_left instead.")
  (wheel_drop_left m))

(cl:ensure-generic-function 'wheel_drop_right-val :lambda-list '(m))
(cl:defmethod wheel_drop_right-val ((m <SparkBaseSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:wheel_drop_right-val is deprecated.  Use spark_base-msg:wheel_drop_right instead.")
  (wheel_drop_right m))

(cl:ensure-generic-function 'wheel_over_current_left-val :lambda-list '(m))
(cl:defmethod wheel_over_current_left-val ((m <SparkBaseSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:wheel_over_current_left-val is deprecated.  Use spark_base-msg:wheel_over_current_left instead.")
  (wheel_over_current_left m))

(cl:ensure-generic-function 'wheel_over_current_right-val :lambda-list '(m))
(cl:defmethod wheel_over_current_right-val ((m <SparkBaseSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:wheel_over_current_right-val is deprecated.  Use spark_base-msg:wheel_over_current_right instead.")
  (wheel_over_current_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SparkBaseSensor>) ostream)
  "Serializes a message object of type '<SparkBaseSensor>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ir_bumper_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ir_bumper_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ir_bumper_front_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ir_bumper_front_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ir_bumper_front) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ir_bumper_back_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ir_bumper_back_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cliff_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cliff_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cliff_front_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cliff_front_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cliff_back_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cliff_back_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_drop_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_drop_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_over_current_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_over_current_right) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SparkBaseSensor>) istream)
  "Deserializes a message object of type '<SparkBaseSensor>"
    (cl:setf (cl:slot-value msg 'ir_bumper_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ir_bumper_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ir_bumper_front_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ir_bumper_front_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ir_bumper_front) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ir_bumper_back_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ir_bumper_back_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cliff_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cliff_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cliff_front_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cliff_front_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cliff_back_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cliff_back_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wheel_drop_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wheel_drop_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wheel_over_current_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wheel_over_current_right) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SparkBaseSensor>)))
  "Returns string type for a message object of type '<SparkBaseSensor>"
  "spark_base/SparkBaseSensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SparkBaseSensor)))
  "Returns string type for a message object of type 'SparkBaseSensor"
  "spark_base/SparkBaseSensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SparkBaseSensor>)))
  "Returns md5sum for a message object of type '<SparkBaseSensor>"
  "fa940530bef575d46667aefc9eff8eff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SparkBaseSensor)))
  "Returns md5sum for a message object of type 'SparkBaseSensor"
  "fa940530bef575d46667aefc9eff8eff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SparkBaseSensor>)))
  "Returns full string definition for message of type '<SparkBaseSensor>"
  (cl:format cl:nil "bool ir_bumper_left~%bool ir_bumper_right~%bool ir_bumper_front_left~%bool ir_bumper_front_right~%bool ir_bumper_front~%bool ir_bumper_back_left~%bool ir_bumper_back_right~%~%~%bool cliff_left~%bool cliff_right~%bool cliff_front_left~%bool cliff_front_right~%bool cliff_back_left~%bool cliff_back_right~%~%bool wheel_drop_left~%bool wheel_drop_right~%bool wheel_over_current_left~%bool wheel_over_current_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SparkBaseSensor)))
  "Returns full string definition for message of type 'SparkBaseSensor"
  (cl:format cl:nil "bool ir_bumper_left~%bool ir_bumper_right~%bool ir_bumper_front_left~%bool ir_bumper_front_right~%bool ir_bumper_front~%bool ir_bumper_back_left~%bool ir_bumper_back_right~%~%~%bool cliff_left~%bool cliff_right~%bool cliff_front_left~%bool cliff_front_right~%bool cliff_back_left~%bool cliff_back_right~%~%bool wheel_drop_left~%bool wheel_drop_right~%bool wheel_over_current_left~%bool wheel_over_current_right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SparkBaseSensor>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SparkBaseSensor>))
  "Converts a ROS message object to a list"
  (cl:list 'SparkBaseSensor
    (cl:cons ':ir_bumper_left (ir_bumper_left msg))
    (cl:cons ':ir_bumper_right (ir_bumper_right msg))
    (cl:cons ':ir_bumper_front_left (ir_bumper_front_left msg))
    (cl:cons ':ir_bumper_front_right (ir_bumper_front_right msg))
    (cl:cons ':ir_bumper_front (ir_bumper_front msg))
    (cl:cons ':ir_bumper_back_left (ir_bumper_back_left msg))
    (cl:cons ':ir_bumper_back_right (ir_bumper_back_right msg))
    (cl:cons ':cliff_left (cliff_left msg))
    (cl:cons ':cliff_right (cliff_right msg))
    (cl:cons ':cliff_front_left (cliff_front_left msg))
    (cl:cons ':cliff_front_right (cliff_front_right msg))
    (cl:cons ':cliff_back_left (cliff_back_left msg))
    (cl:cons ':cliff_back_right (cliff_back_right msg))
    (cl:cons ':wheel_drop_left (wheel_drop_left msg))
    (cl:cons ':wheel_drop_right (wheel_drop_right msg))
    (cl:cons ':wheel_over_current_left (wheel_over_current_left msg))
    (cl:cons ':wheel_over_current_right (wheel_over_current_right msg))
))
