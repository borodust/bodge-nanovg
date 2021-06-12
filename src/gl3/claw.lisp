(claw:defwrapper (:bodge-nanovg-gl3
                  (:system :bodge-nanovg/wrapper)
                  (:headers "src/bodge_nanovg.h")
                  (:defines "BODGE_GL3" 1)
                  (:includes :nanovg-includes :glad-includes)
                  (:include-sources "nanovg.h" "nanovg_gl.h")
                  (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu")
                            ((:and :x86-64 :windows) "x86_64-w64-mingw32")
                            ((:and :x86-64 :drawin) "x86_64-apple-darwin-gnu"))
                  (:persistent :bodge-nanovg-gl3-bindings
                   :bindings-path "bindings/gl3/"
                   :depends-on (:claw-utils)))
  :in-package :%nanovg
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer))
  :with-adapter (:static
                 :path "src/lib/adapter_gl3.c")
  :symbolicate-names (:in-pipeline
                      (:by-changing "nvgRGBf" 'rgb-f)
                      (:by-changing "nvgRGBAf" 'rgba-f)
                      (:by-removing-prefixes "nvgl_" "NVGL_"
                                             "nvgl" "NVGL"
                                             "nvg_" "NVG_"
                                             "nvg" "NVG")))
