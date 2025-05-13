
(cl:in-package :asdf)

(defsystem "spark_fetchtea-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "scene" :depends-on ("_package_scene"))
    (:file "_package_scene" :depends-on ("_package"))
  ))