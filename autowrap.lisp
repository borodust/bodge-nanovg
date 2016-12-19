(cl:in-package :bodge-nanovg)


(define-constant +local-include-path+
    #.(namestring (merge-pathnames "lib/src/"
                                   (directory-namestring
                                    (or *compile-file-truename* *load-truename*))))
    :test #'equal)


(autowrap:c-include
 '(bodge-nanovg spec "lib.h")
 :spec-path '(bodge-nanovg spec)
 :definition-package :%nanovg
 :sysincludes (list +local-include-path+)
 :exclude-sources (".*.h")
 :include-sources ("nanovg.h"
                   "nanovg_gl.h")
 :no-accessors t
 :symbol-regex (("(nvg|NVG).?\\w*" () (lambda (name matches regex)
                                       (declare (ignore matches regex))
                                       (let ((pos (position #\_ name)))
                                         (if (and pos (= pos 3))
                                             (subseq name 4)
                                             (subseq name 3)))))))
