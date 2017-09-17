(cl:in-package :bodge-nanovg)


(autowrap:c-include
 '(bodge-nanovg lib "bodge_nanovg.h")
 :spec-path '(bodge-nanovg spec)
 :definition-package :%nanovg
 :sysincludes (append (list (namestring
			     (asdf:component-pathname
			      (asdf:find-component (asdf:find-system :bodge-nanovg) :nanovg-lib))))
		      #+windows
		      (list "c:/msys64/mingw64/x86_64-w64-mingw32/include/"
			    "c:/msys64/mingw64/include/"
			    "c:/msys64/usr/local/include/"))
 :exclude-sources (".*.h")
 :include-sources ("bodge_nanovg.h"
                   "nanovg.h"
                   "nanovg_gl.h")
 :include-definitions ("GLuint"
                       "GLuint64"
                       "uint32_t"
                       "uint64_t")
 :no-accessors t
 :filter-spec-p t
 :symbol-exceptions (("GLuint" . #.(symbol-name 'gl-uint))
                     ("GLuint64" . #.(symbol-name 'gl-uint64))
                     ("nvgRGBf" . #.(symbol-name 'rgb-f))
                     ("nvgRGBAf" . #.(symbol-name 'rgba-f)))
  :symbol-regex (("(nvgl|NVGL).?\\w*" () (lambda (name matches regex)
                                            (declare (ignore matches regex))
                                            (let ((pos (position #\_ name)))
                                              (if (and pos (= pos 4))
                                                  (subseq name 5)
                                                  (subseq name 4)))))
                ("(nvg|NVG).?\\w*" () (lambda (name matches regex)
                                       (declare (ignore matches regex))
                                       (let ((pos (position #\_ name)))
                                         (if (and pos (= pos 3))
                                             (subseq name 4)
                                             (subseq name 3)))))))
