; Auto-generated. Do not edit!


(cl:in-package Localization_srv-srv)


;//! \htmlinclude PNTR-request.msg.html

(cl:defclass <PNTR-request> (roslisp-msg-protocol:ros-message)
  ((time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:real
    :initform 0)
   (rgb_query
    :reader rgb_query
    :initarg :rgb_query
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (depth_query
    :reader depth_query
    :initarg :depth_query
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PNTR-request (<PNTR-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PNTR-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PNTR-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Localization_srv-srv:<PNTR-request> is deprecated: use Localization_srv-srv:PNTR-request instead.")))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <PNTR-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Localization_srv-srv:time_stamp-val is deprecated.  Use Localization_srv-srv:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'rgb_query-val :lambda-list '(m))
(cl:defmethod rgb_query-val ((m <PNTR-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Localization_srv-srv:rgb_query-val is deprecated.  Use Localization_srv-srv:rgb_query instead.")
  (rgb_query m))

(cl:ensure-generic-function 'depth_query-val :lambda-list '(m))
(cl:defmethod depth_query-val ((m <PNTR-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Localization_srv-srv:depth_query-val is deprecated.  Use Localization_srv-srv:depth_query instead.")
  (depth_query m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PNTR-request>) ostream)
  "Serializes a message object of type '<PNTR-request>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_stamp) (cl:floor (cl:slot-value msg 'time_stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rgb_query))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'rgb_query))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'depth_query))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'depth_query))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PNTR-request>) istream)
  "Deserializes a message object of type '<PNTR-request>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rgb_query) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rgb_query)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'depth_query) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'depth_query)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PNTR-request>)))
  "Returns string type for a service object of type '<PNTR-request>"
  "Localization_srv/PNTRRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PNTR-request)))
  "Returns string type for a service object of type 'PNTR-request"
  "Localization_srv/PNTRRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PNTR-request>)))
  "Returns md5sum for a message object of type '<PNTR-request>"
  "ab14549b64f35f7bb5d487133904e36e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PNTR-request)))
  "Returns md5sum for a message object of type 'PNTR-request"
  "ab14549b64f35f7bb5d487133904e36e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PNTR-request>)))
  "Returns full string definition for message of type '<PNTR-request>"
  (cl:format cl:nil "time time_stamp~%float64[] rgb_query~%float64[] depth_query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PNTR-request)))
  "Returns full string definition for message of type 'PNTR-request"
  (cl:format cl:nil "time time_stamp~%float64[] rgb_query~%float64[] depth_query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PNTR-request>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rgb_query) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'depth_query) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PNTR-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PNTR-request
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':rgb_query (rgb_query msg))
    (cl:cons ':depth_query (depth_query msg))
))
;//! \htmlinclude PNTR-response.msg.html

(cl:defclass <PNTR-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PNTR-response (<PNTR-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PNTR-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PNTR-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Localization_srv-srv:<PNTR-response> is deprecated: use Localization_srv-srv:PNTR-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <PNTR-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Localization_srv-srv:state-val is deprecated.  Use Localization_srv-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PNTR-response>) ostream)
  "Serializes a message object of type '<PNTR-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PNTR-response>) istream)
  "Deserializes a message object of type '<PNTR-response>"
  (cl:setf (cl:slot-value msg 'state) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'state)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PNTR-response>)))
  "Returns string type for a service object of type '<PNTR-response>"
  "Localization_srv/PNTRResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PNTR-response)))
  "Returns string type for a service object of type 'PNTR-response"
  "Localization_srv/PNTRResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PNTR-response>)))
  "Returns md5sum for a message object of type '<PNTR-response>"
  "ab14549b64f35f7bb5d487133904e36e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PNTR-response)))
  "Returns md5sum for a message object of type 'PNTR-response"
  "ab14549b64f35f7bb5d487133904e36e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PNTR-response>)))
  "Returns full string definition for message of type '<PNTR-response>"
  (cl:format cl:nil "~%float64[6] state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PNTR-response)))
  "Returns full string definition for message of type 'PNTR-response"
  (cl:format cl:nil "~%float64[6] state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PNTR-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PNTR-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PNTR-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PNTR)))
  'PNTR-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PNTR)))
  'PNTR-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PNTR)))
  "Returns string type for a service object of type '<PNTR>"
  "Localization_srv/PNTR")