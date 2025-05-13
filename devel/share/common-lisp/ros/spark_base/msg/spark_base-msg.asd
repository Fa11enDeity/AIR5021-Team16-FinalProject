
(cl:in-package :asdf)

(defsystem "spark_base-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "" :depends-on ("_package_"))
    (:file "_package_" :depends-on ("_package"))
    (:file "GyroMessage" :depends-on ("_package_GyroMessage"))
    (:file "_package_GyroMessage" :depends-on ("_package"))
    (:file "SparkBaseDock" :depends-on ("_package_SparkBaseDock"))
    (:file "_package_SparkBaseDock" :depends-on ("_package"))
    (:file "SparkBaseOdom" :depends-on ("_package_SparkBaseOdom"))
    (:file "_package_SparkBaseOdom" :depends-on ("_package"))
    (:file "SparkBaseSensor" :depends-on ("_package_SparkBaseSensor"))
    (:file "_package_SparkBaseSensor" :depends-on ("_package"))
  ))