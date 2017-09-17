(cl:in-package :bodge-nanovg)


(bodge-autowrap:c-include "bodge_nanovg.h" :bodge-nanovg
 :package :%nanovg
 :sysincludes (:nanovg-lib)
 :include-sources ("nanovg.h" "nanovg_gl.h")
 :symbol-exceptions (("GLuint" gl-uint)
                     ("GLuint64" gl-uint64)
                     ("nvgRGBf" rgb-f)
                     ("nvgRGBAf" rgba-f))
  :symbol-regex (("(nvgl|NVGL)_\\w*" 5)
                 ("(nvgl|NVGL)\\w*" 4)
                 ("(nvg|NVG)_\\w*" 4)
                 ("(nvg|NVG)\\w*" 3)))
