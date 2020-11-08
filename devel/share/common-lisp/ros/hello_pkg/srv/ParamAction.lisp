; Auto-generated. Do not edit!


(cl:in-package hello_pkg-srv)


;//! \htmlinclude ParamAction-request.msg.html

(cl:defclass <ParamAction-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (paramName
    :reader paramName
    :initarg :paramName
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0)
   (filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass ParamAction-request (<ParamAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_pkg-srv:<ParamAction-request> is deprecated: use hello_pkg-srv:ParamAction-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <ParamAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_pkg-srv:action-val is deprecated.  Use hello_pkg-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'paramName-val :lambda-list '(m))
(cl:defmethod paramName-val ((m <ParamAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_pkg-srv:paramName-val is deprecated.  Use hello_pkg-srv:paramName instead.")
  (paramName m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParamAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_pkg-srv:value-val is deprecated.  Use hello_pkg-srv:value instead.")
  (value m))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <ParamAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_pkg-srv:filename-val is deprecated.  Use hello_pkg-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamAction-request>) ostream)
  "Serializes a message object of type '<ParamAction-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'paramName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'paramName))
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamAction-request>) istream)
  "Deserializes a message object of type '<ParamAction-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'paramName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'paramName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamAction-request>)))
  "Returns string type for a service object of type '<ParamAction-request>"
  "hello_pkg/ParamActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamAction-request)))
  "Returns string type for a service object of type 'ParamAction-request"
  "hello_pkg/ParamActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamAction-request>)))
  "Returns md5sum for a message object of type '<ParamAction-request>"
  "945ecb72549f28b95525ed9d393f5e1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamAction-request)))
  "Returns md5sum for a message object of type 'ParamAction-request"
  "945ecb72549f28b95525ed9d393f5e1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamAction-request>)))
  "Returns full string definition for message of type '<ParamAction-request>"
  (cl:format cl:nil "string  action~%string  paramName~%int64   value~%string  filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamAction-request)))
  "Returns full string definition for message of type 'ParamAction-request"
  (cl:format cl:nil "string  action~%string  paramName~%int64   value~%string  filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamAction-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action))
     4 (cl:length (cl:slot-value msg 'paramName))
     8
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamAction-request
    (cl:cons ':action (action msg))
    (cl:cons ':paramName (paramName msg))
    (cl:cons ':value (value msg))
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude ParamAction-response.msg.html

(cl:defclass <ParamAction-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ParamAction-response (<ParamAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_pkg-srv:<ParamAction-response> is deprecated: use hello_pkg-srv:ParamAction-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ParamAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_pkg-srv:success-val is deprecated.  Use hello_pkg-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamAction-response>) ostream)
  "Serializes a message object of type '<ParamAction-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamAction-response>) istream)
  "Deserializes a message object of type '<ParamAction-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamAction-response>)))
  "Returns string type for a service object of type '<ParamAction-response>"
  "hello_pkg/ParamActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamAction-response)))
  "Returns string type for a service object of type 'ParamAction-response"
  "hello_pkg/ParamActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamAction-response>)))
  "Returns md5sum for a message object of type '<ParamAction-response>"
  "945ecb72549f28b95525ed9d393f5e1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamAction-response)))
  "Returns md5sum for a message object of type 'ParamAction-response"
  "945ecb72549f28b95525ed9d393f5e1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamAction-response>)))
  "Returns full string definition for message of type '<ParamAction-response>"
  (cl:format cl:nil "bool    success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamAction-response)))
  "Returns full string definition for message of type 'ParamAction-response"
  (cl:format cl:nil "bool    success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamAction-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamAction-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ParamAction)))
  'ParamAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ParamAction)))
  'ParamAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamAction)))
  "Returns string type for a service object of type '<ParamAction>"
  "hello_pkg/ParamAction")