(cl:in-package :nanovg)

(defun make-context (&rest create-flags)
  (%nanovg:create-gl3 (cffi:foreign-bitfield-value '%nanovg:create-flags create-flags)))


(defun destroy-context (context)
  (%nanovg:delete-gl3 context))
