
(cl:in-package :asdf)

(defsystem "Localization_srv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PNTR" :depends-on ("_package_PNTR"))
    (:file "_package_PNTR" :depends-on ("_package"))
  ))