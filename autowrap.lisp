(cl:in-package :bodge-nanovg)


(define-constant +local-include-path+
    #.(namestring (merge-pathnames "lib/nanovg/src/"
                                   (directory-namestring
                                    (or *compile-file-truename* *load-truename*))))
    :test #'equal)


(autowrap:c-include
 '(bodge-nanovg lib "bodge_nanovg.h")
 :spec-path '(bodge-nanovg spec)
 :definition-package :%nanovg
 :sysincludes (list +local-include-path+)
 :exclude-sources (".*.h")
 :include-sources ("nanovg.h"
                   "nanovg_gl.h")
 :include-definitions ("GLuint"
                       "GLuint64"
                       "uint32_t"
                       "uint64_t")
 :no-accessors t
 :symbol-exceptions (("GLuint" . #.(symbol-name 'gl-uint))
                     ("GLuint64" . #.(symbol-name 'gl-uint64)))
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
