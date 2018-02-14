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


(asdf:defsystem bodge-nanovg/example
  :description "Simple bodge-nanovg example"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (glfw-blob bodge-glfw glad-blob bodge-glad nanovg-blob bodge-nanovg
                         cl-opengl claw trivial-main-thread)
  :components ((:file "example")))
