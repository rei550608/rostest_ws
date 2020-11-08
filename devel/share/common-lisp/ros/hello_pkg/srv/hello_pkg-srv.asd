
(cl:in-package :asdf)

(defsystem "hello_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "ParamAction" :depends-on ("_package_ParamAction"))
    (:file "_package_ParamAction" :depends-on ("_package"))
  ))