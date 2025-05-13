; Auto-generated. Do not edit!


(cl:in-package spark_base-msg)


;//! \htmlinclude SparkBaseDock.msg.html

(cl:defclass <SparkBaseDock> (roslisp-msg-protocol:ros-message)
  ((search_dock
    :reader search_dock
    :initarg :search_dock
    :type cl:boolean
    :initform cl:nil)
   (touch_charge
    :reader touch_charge
    :initarg :touch_charge
    :type cl:boolean
    :initform cl:nil)
   (plug_charge
    :reader plug_charge
    :initarg :plug_charge
    :type cl:boolean
    :initform cl:nil)
   (dock_dir_left
    :reader dock_dir_left
    :initarg :dock_dir_left
    :type cl:boolean
    :initform cl:nil)
   (dock_dir_right
    :reader dock_dir_right
    :initarg :dock_dir_right
    :type cl:boolean
    :initform cl:nil)
   (dock_dir_front
    :reader dock_dir_front
    :initarg :dock_dir_front
    :type cl:boolean
    :initform cl:nil)
   (dock_dir_BACK
    :reader dock_dir_BACK
    :initarg :dock_dir_BACK
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SparkBaseDock (<SparkBaseDock>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SparkBaseDock>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SparkBaseDock)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spark_base-msg:<SparkBaseDock> is deprecated: use spark_base-msg:SparkBaseDock instead.")))

(cl:ensure-generic-function 'search_dock-val :lambda-list '(m))
(cl:defmethod search_dock-val ((m <SparkBaseDock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:search_dock-val is deprecated.  Use spark_base-msg:search_dock instead.")
  (search_dock m))

(cl:ensure-generic-function 'touch_charge-val :lambda-list '(m))
(cl:defmethod touch_charge-val ((m <SparkBaseDock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:touch_charge-val is deprecated.  Use spark_base-msg:touch_charge instead.")
  (touch_charge m))

(cl:ensure-generic-function 'plug_charge-val :lambda-list '(m))
(cl:defmethod plug_charge-val ((m <SparkBaseDock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:plug_charge-val is deprecated.  Use spark_base-msg:plug_charge instead.")
  (plug_charge m))

(cl:ensure-generic-function 'dock_dir_left-val :lambda-list '(m))
(cl:defmethod dock_dir_left-val ((m <SparkBaseDock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:dock_dir_left-val is deprecated.  Use spark_base-msg:dock_dir_left instead.")
  (dock_dir_left m))

(cl:ensure-generic-function 'dock_dir_right-val :lambda-list '(m))
(cl:defmethod dock_dir_right-val ((m <SparkBaseDock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:dock_dir_right-val is deprecated.  Use spark_base-msg:dock_dir_right instead.")
  (dock_dir_right m))

(cl:ensure-generic-function 'dock_dir_front-val :lambda-list '(m))
(cl:defmethod dock_dir_front-val ((m <SparkBaseDock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:dock_dir_front-val is deprecated.  Use spark_base-msg:dock_dir_front instead.")
  (dock_dir_front m))

(cl:ensure-generic-function 'dock_dir_BACK-val :lambda-list '(m))
(cl:defmethod dock_dir_BACK-val ((m <SparkBaseDock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spark_base-msg:dock_dir_BACK-val is deprecated.  Use spark_base-msg:dock_dir_BACK instead.")
  (dock_dir_BACK m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SparkBaseDock>) ostream)
  "Serializes a message object of type '<SparkBaseDock>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'search_dock) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'touch_charge) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'plug_charge) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dock_dir_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dock_dir_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dock_dir_front) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dock_dir_BACK) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SparkBaseDock>) istream)
  "Deserializes a message object of type '<SparkBaseDock>"
    (cl:setf (cl:slot-value msg 'search_dock) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'touch_charge) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'plug_charge) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'dock_dir_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'dock_dir_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'dock_dir_front) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'dock_dir_BACK) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SparkBaseDock>)))
  "Returns string type for a message object of type '<SparkBaseDock>"
  "spark_base/SparkBaseDock")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SparkBaseDock)))
  "Returns string type for a message object of type 'SparkBaseDock"
  "spark_base/SparkBaseDock")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SparkBaseDock>)))
  "Returns md5sum for a message object of type '<SparkBaseDock>"
  "af3cc2d3264fd6c34b48ddc58b42fe5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SparkBaseDock)))
  "Returns md5sum for a message object of type 'SparkBaseDock"
  "af3cc2d3264fd6c34b48ddc58b42fe5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SparkBaseDock>)))
  "Returns full string definition for message of type '<SparkBaseDock>"
  (cl:format cl:nil "bool search_dock~%bool touch_charge~%bool plug_charge~%~%bool dock_dir_left~%bool dock_dir_right~%bool dock_dir_front~%bool dock_dir_BACK~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SparkBaseDock)))
  "Returns full string definition for message of type 'SparkBaseDock"
  (cl:format cl:nil "bool search_dock~%bool touch_charge~%bool plug_charge~%~%bool dock_dir_left~%bool dock_dir_right~%bool dock_dir_front~%bool dock_dir_BACK~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SparkBaseDock>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SparkBaseDock>))
  "Converts a ROS message object to a list"
  (cl:list 'SparkBaseDock
    (cl:cons ':search_dock (search_dock msg))
    (cl:cons ':touch_charge (touch_charge msg))
    (cl:cons ':plug_charge (plug_charge msg))
    (cl:cons ':dock_dir_left (dock_dir_left msg))
    (cl:cons ':dock_dir_right (dock_dir_right msg))
    (cl:cons ':dock_dir_front (dock_dir_front msg))
    (cl:cons ':dock_dir_BACK (dock_dir_BACK msg))
))
