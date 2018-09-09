(claw:c-include "bodge_nanovg_gl2.h" :bodge-nanovg
  :in-package :%nanovg
  :sysincludes (:nanovg-includes)
  :include-sources ("nanovg.h" "nanovg_gl.h")
  :local-only t
  :spec-module :spec-gl2
  :rename-symbols (claw:in-pipeline
                   (claw:by-changing "GLuint" 'gl-uint)
                   (claw:by-changing"GLuint64" 'gl-uint64)
                   (claw:by-changing "nvgRGBf" 'rgb-f)
                   (claw:by-changing "nvgRGBAf" 'rgba-f)
                   (claw:by-removing-prefixes "nvgl_" "NVGL_"
                                              "nvgl" "NVGL"
                                              "nvg_" "NVG_"
                                              "nvg" "NVG")))
