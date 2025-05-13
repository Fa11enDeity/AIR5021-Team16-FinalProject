; Auto-generated. Do not edit!


(cl:in-package spark_base-msg)


;//! \htmlinclude GyroMessage.msg.html

(cl:defclass <GyroMessage> (roslisp-msg-protocol:ros-message)
  ((acvx
    :reader acvx
    :initarg :acvx
    :type cl:float
    :initform 0.0)
   (acvy
    :reader acvy
    :initarg :acvy
    :type cl:float
    :initform 0.0)
   (acvz
    :reader acvz
    :initarg :acvz
    :type cl:float
    :initform 0.0)
   (anvx
    :reader anvx
    :initarg :anvx
    :type cl:float
    :initform 0.0)
   (anvy
    :reader anvy
    :initarg :anvy
    :type cl:float
    :initform 0.0)
   (anvz
    :reader anvz
    :initarg :anvz
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (bx
    :reader bx
    :initarg :bx
    :type cl:float
    :initform 0.0)
   (by
    :reader by
    :initarg :by
    :type cl:float
    :initform 0.0)
   (bz
    :reader bz
    :initarg :bz
    :type cl:float
    :initform 0.0))
)

(cl:defclass GyroMessage (<GyroMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GyroMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GyroMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spark_base-msg:<GyroMessage> is deprecated: use spark_base-msg:GyroMessage instead.")))

(cl:ensure-generic-function 'acvx-val :lambda-list '(m))
(cl:defmethod acvx-val ((m <GyroMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:acvx-val is deprecated.  Use spark_base-msg:acvx instead.")
  (acvx m))

(cl:ensure-generic-function 'acvy-val :lambda-list '(m))
(cl:defmethod acvy-val ((m <GyroMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:acvy-val is deprecated.  Use spark_base-msg:acvy instead.")
  (acvy m))

(cl:ensure-generic-function 'acvz-val :lambda-list '(m))
(cl:defmethod acvz-val ((m <GyroMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:acvz-val is deprecated.  Use spark_base-msg:acvz instead.")
  (acvz m))

(cl:ensure-generic-function 'anvx-val :lambda-list '(m))
(cl:defmethod anvx-val ((m <GyroMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:anvx-val is deprecated.  Use spark_base-msg:anvx instead.")
  (anvx m))

(cl:ensure-generic-function 'anvy-val :lambda-list '(m))
(cl:defmethod anvy-val ((m <GyroMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:anvy-val is deprecated.  Use spark_base-msg:anvy instead.")
  (anvy m))

(cl:ensure-generic-function 'anvz-val :lambda-list '(m))
(cl:defmethod anvz-val ((m <GyroMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:anvz-val is deprecated.  Use spark_base-msg:anvz instead.")
  (anvz m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <GyroMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:roll-val is deprecated.  Use spark_base-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <GyroMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:pitch-val is deprecated.  Use spark_base-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <GyroMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:yaw-val is deprecated.  Use spark_base-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'bx-val :lambda-list '(m))
(cl:defmethod bx-val ((m <GyroMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:bx-val is deprecated.  Use spark_base-msg:bx instead.")
  (bx m))

(cl:ensure-generic-function 'by-val :lambda-list '(m))
(cl:defmethod by-val ((m <GyroMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:by-val is deprecated.  Use spark_base-msg:by instead.")
  (by m))

(cl:ensure-generic-function 'bz-val :lambda-list '(m))
(cl:defmethod bz-val ((m <GyroMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:bz-val is deprecated.  Use spark_base-msg:bz instead.")
  (bz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GyroMessage>) ostream)
  "Serializes a message object of type '<GyroMessage>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acvx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acvy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acvz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'anvx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'anvy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'anvz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'by))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GyroMessage>) istream)
  "Deserializes a message object of type '<GyroMessage>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acvx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acvy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acvz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'anvx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'anvy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'anvz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'by) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bz) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GyroMessage>)))
  "Returns string type for a message object of type '<GyroMessage>"
  "spark_base/GyroMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GyroMessage)))
  "Returns string type for a message object of type 'GyroMessage"
  "spark_base/GyroMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GyroMessage>)))
  "Returns md5sum for a message object of type '<GyroMessage>"
  "3bc41d895c9f0f7df678a987f8d8ab7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GyroMessage)))
  "Returns md5sum for a message object of type 'GyroMessage"
  "3bc41d895c9f0f7df678a987f8d8ab7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GyroMessage>)))
  "Returns full string definition for message of type '<GyroMessage>"
  (cl:format cl:nil "~%# This expresses~%#加速度　ac~%float32  acvx	~%float32  acvy~%float32  acvz~%#角速度　an~%float32  anvx~%float32  anvy~%float32  anvz~%#横滚角~%float32  roll~%#俯仰角~%float32  pitch~%#航向角~%float32  yaw~%#磁感应度　b~%float32  bx~%float32  by~%float32  bz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GyroMessage)))
  "Returns full string definition for message of type 'GyroMessage"
  (cl:format cl:nil "~%# This expresses~%#加速度　ac~%float32  acvx	~%float32  acvy~%float32  acvz~%#角速度　an~%float32  anvx~%float32  anvy~%float32  anvz~%#横滚角~%float32  roll~%#俯仰角~%float32  pitch~%#航向角~%float32  yaw~%#磁感应度　b~%float32  bx~%float32  by~%float32  bz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GyroMessage>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GyroMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'GyroMessage
    (cl:cons ':acvx (acvx msg))
    (cl:cons ':acvy (acvy msg))
    (cl:cons ':acvz (acvz msg))
    (cl:cons ':anvx (anvx msg))
    (cl:cons ':anvy (anvy msg))
    (cl:cons ':anvz (anvz msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':bx (bx msg))
    (cl:cons ':by (by msg))
    (cl:cons ':bz (bz msg))
))
