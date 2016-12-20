(in-package :cl-user)

(defpackage :bodge-nanovg.def
  (:use :cl :asdf))

(in-package :bodge-nanovg.def)


(defsystem bodge-nanovg
  :description "Wrapper over nanovg library for cl-bodge system"
  :version "0.0.1"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (alexandria cffi cl-autowrap cl-plus-c)
  :serial t
  :components ((:file "packages")
               (:file "libnanovg")
               (:file "autowrap")
               (:file "nanovg")
               (:module spec)
               (:module lib
                        :components ((:static-file "bodge_nanovg.h")))))
