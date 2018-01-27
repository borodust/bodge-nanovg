(asdf:defsystem bodge-nanovg
  :description "Wrapper over nanovg library for cl-bodge system"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (uiop alexandria cffi claw)
  :serial t
  :components ((:file "packages")
               (:file "libnanovg")
               (:static-file "bodge_nanovg.h")
               (:file "claw")
               (:file "nanovg")
               (:module spec)
               (:module lib)
               (:module nanovg-includes :pathname "lib/nanovg/src/")))
