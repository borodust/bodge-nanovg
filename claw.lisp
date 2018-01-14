(claw:c-include "bodge_nanovg.h" :bodge-nanovg
  :package :%nanovg
  :sysincludes (:nanovg-lib)
  :include-sources ("nanovg.h" "nanovg_gl.h")
  :symbol-exceptions (("GLuint" gl-uint)
                      ("GLuint64" gl-uint64)
                      ("nvgRGBf" rgb-f)
                      ("nvgRGBAf" rgba-f))
  :symbol-prefix ("nvgl_" "NVGL_"
                          "nvgl" "NVGL"
                          "nvg_" "NVG_"
                          "nvg" "NVG"))
