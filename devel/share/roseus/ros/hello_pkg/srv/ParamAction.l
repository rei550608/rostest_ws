;; Auto-generated. Do not edit!


(when (boundp 'hello_pkg::ParamAction)
  (if (not (find-package "HELLO_PKG"))
    (make-package "HELLO_PKG"))
  (shadow 'ParamAction (find-package "HELLO_PKG")))
(unless (find-package "HELLO_PKG::PARAMACTION")
  (make-package "HELLO_PKG::PARAMACTION"))
(unless (find-package "HELLO_PKG::PARAMACTIONREQUEST")
  (make-package "HELLO_PKG::PARAMACTIONREQUEST"))
(unless (find-package "HELLO_PKG::PARAMACTIONRESPONSE")
  (make-package "HELLO_PKG::PARAMACTIONRESPONSE"))

(in-package "ROS")





(defclass hello_pkg::ParamActionRequest
  :super ros::object
  :slots (_action _paramName _value _filename ))

(defmethod hello_pkg::ParamActionRequest
  (:init
   (&key
    ((:action __action) "")
    ((:paramName __paramName) "")
    ((:value __value) 0)
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _action (string __action))
   (setq _paramName (string __paramName))
   (setq _value (round __value))
   (setq _filename (string __filename))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:paramName
   (&optional __paramName)
   (if __paramName (setq _paramName __paramName)) _paramName)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _action
    4 (length _action)
    ;; string _paramName
    4 (length _paramName)
    ;; int64 _value
    8
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;; string _paramName
       (write-long (length _paramName) s) (princ _paramName s)
     ;; int64 _value
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _value (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _value) (= (length (_value . bv)) 2)) ;; bignum
              (write-long (ash (elt (_value . bv) 0) 0) s)
              (write-long (ash (elt (_value . bv) 1) -1) s))
             ((and (class _value) (= (length (_value . bv)) 1)) ;; big1
              (write-long (elt (_value . bv) 0) s)
              (write-long (if (>= _value 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _value s)(write-long (if (>= _value 0) 0 #xffffffff) s)))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _paramName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _paramName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _value
#+(or :alpha :irix6 :x86_64)
      (setf _value (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _value (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hello_pkg::ParamActionResponse
  :super ros::object
  :slots (_success ))

(defmethod hello_pkg::ParamActionResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hello_pkg::ParamAction
  :super ros::object
  :slots ())

(setf (get hello_pkg::ParamAction :md5sum-) "945ecb72549f28b95525ed9d393f5e1c")
(setf (get hello_pkg::ParamAction :datatype-) "hello_pkg/ParamAction")
(setf (get hello_pkg::ParamAction :request) hello_pkg::ParamActionRequest)
(setf (get hello_pkg::ParamAction :response) hello_pkg::ParamActionResponse)

(defmethod hello_pkg::ParamActionRequest
  (:response () (instance hello_pkg::ParamActionResponse :init)))

(setf (get hello_pkg::ParamActionRequest :md5sum-) "945ecb72549f28b95525ed9d393f5e1c")
(setf (get hello_pkg::ParamActionRequest :datatype-) "hello_pkg/ParamActionRequest")
(setf (get hello_pkg::ParamActionRequest :definition-)
      "string  action
string  paramName
int64   value
string  filename
---
bool    success
")

(setf (get hello_pkg::ParamActionResponse :md5sum-) "945ecb72549f28b95525ed9d393f5e1c")
(setf (get hello_pkg::ParamActionResponse :datatype-) "hello_pkg/ParamActionResponse")
(setf (get hello_pkg::ParamActionResponse :definition-)
      "string  action
string  paramName
int64   value
string  filename
---
bool    success
")



(provide :hello_pkg/ParamAction "945ecb72549f28b95525ed9d393f5e1c")


