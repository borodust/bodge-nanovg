(asdf:defsystem bodge-nanovg
  :description "Wrapper over nanovg library for cl-bodge system"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:uiop :alexandria :cffi :cffi-c-ref
                     (:feature :bodge-gl2 :bodge-nanovg-gl2-bindings)
                     (:feature (:not :bodge-gl2) :bodge-nanovg-gl3-bindings))
  :pathname "src/"
  :serial t
  :components ((:file "packages")
               (:module :gl2
                :if-feature :bodge-gl2
                :serial t
                :components ((:file "context")))
               (:module :gl3
                :if-feature (:not :bodge-gl2)
                :serial t
                :components ((:file "context")))
               (:file "nanovg")))


(asdf:defsystem bodge-nanovg/wrapper
  :description "Wrapper over nanovg library for cl-bodge system"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:uiop :alexandria :cffi :cffi-c-ref :claw :claw-utils)
  :serial t
  :components ((:file "src/gl2/claw")
               (:file "src/gl3/claw")
               (:module :nanovg-includes :pathname "src/lib/nanovg/src/")
               (:module :glad-includes :pathname "src/lib/glad/glad/include/")))


(asdf:defsystem bodge-nanovg/example
  :description "Simple bodge-nanovg example"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:glfw-blob :bodge-glfw :glad-blob :bodge-glad :nanovg-blob :bodge-nanovg
               :cl-opengl :cffi :cffi-c-ref :trivial-main-thread :float-features)
  :pathname "src/"
  :components ((:file "example")))
