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
  :depends-on (alexandria cffi bodge-autowrap bodge-plus-c)
  :serial t
  :components ((:file "packages")
               (:file "libnanovg")
               (:static-file "bodge_nanovg.h")
               (:file "autowrap")
               (:file "nanovg")
               (:module spec)
               (:module lib)
	       (:module nanovg-lib :pathname "lib/nanovg/src/")))
