(asdf:defsystem bodge-nanovg
  :description "Wrapper over nanovg library for cl-bodge system"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:uiop :alexandria :cffi :cffi-c-ref :claw :claw-utils)
  :pathname "src/"
  :serial t
  :components ((:file "packages")
               (:module :gl2
                :if-feature :bodge-gl2
                :serial t
                :components ((:static-file "bodge_nanovg_gl2.h")
                             (:file "claw")
                             (:file "context")
                             (:module :spec)))
               (:module :gl3
                :if-feature (:not :bodge-gl2)
                :serial t
                :components ((:static-file "bodge_nanovg_gl3.h")
                             (:file "claw")
                             (:file "context")
                             (:module :spec)))
               (:file "nanovg")
               (:module :nanovg-includes :pathname "lib/nanovg/src/")
               (:module :glad-includes :pathname "lib/glad/glad/include/")))


(asdf:defsystem bodge-nanovg/example
  :description "Simple bodge-nanovg example"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:glfw-blob :bodge-glfw :glad-blob :bodge-glad :nanovg-blob :bodge-nanovg
                          :cl-opengl :claw :cffi :cffi-c-ref :trivial-main-thread
                          :float-features)
  :pathname "src/"
  :components ((:file "example")))
