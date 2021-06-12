(cl:in-package :nanovg)


(defun make-context (&rest create-flags)
  (%nanovg:create-gl2 (cffi:foreign-bitfield-value '%nanovg:create-flags create-flags)))


(defun destroy-context (context)
  (%nanovg:delete-gl2 context))
