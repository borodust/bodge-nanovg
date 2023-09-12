(claw:defwrapper (:bodge-nanovg-gl2
                  (:system :bodge-nanovg/wrapper)
                  (:headers "src/bodge_nanovg.h")
                  (:defines "BODGE_GL2" 1)
                  (:includes :nanovg-includes :glad-includes)
                  (:include-sources "nanovg.h" "nanovg_gl.h")
                  (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu")
                            ((:and :ppc64 :linux :big-endian) "powerpc64-pc-linux-gnu")
                            ((:and :ppc64 :linux :little-endian) "powerpc64le-pc-linux-gnu")
                            ((:and :x86-64 :windows) "x86_64-w64-mingw32")
                            ((:and :x86-64 :darwin) "x86_64-apple-darwin-gnu"))
                  (:persistent :bodge-nanovg-gl2-bindings
                   :bindings-path "bindings/gl2/"
                   :depends-on (:claw-utils)))
  :in-package :%nanovg
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer))
  :with-adapter (:static
                 :path "src/lib/adapter_gl2.c")
  :symbolicate-names (:in-pipeline
                      (:by-changing "nvgRGBf" 'rgb-f)
                      (:by-changing "nvgRGBAf" 'rgba-f)
                      (:by-removing-prefixes "nvgl_" "NVGL_"
                                             "nvgl" "NVGL"
                                             "nvg_" "NVG_"
                                             "nvg" "NVG")))
