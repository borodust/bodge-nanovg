(uiop:define-package :%nanovg
  (:nicknames :%nvg)
  (:use))


(claw:defwrapper (nanovg::bodge-nanovg
                  (:headers "bodge_nanovg_gl2.h")
                  (:includes :gl2 :nanovg-includes :glad-includes)
                  (:spec-path '(:gl2 "spec/"))
                  (:include-sources "nanovg.h" "nanovg_gl.h"))
  :in-package :%nanovg
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer))
  :with-adapter (:static "lib/adapter_gl2.c")
  :symbolicate-names (:in-pipeline
                      (:by-changing "nvgRGBf" 'rgb-f)
                      (:by-changing "nvgRGBAf" 'rgba-f)
                      (:by-removing-prefixes "nvgl_" "NVGL_"
                                             "nvgl" "NVGL"
                                             "nvg_" "NVG_"
                                             "nvg" "NVG")))
