(cl:in-package :nanovg)


(defun make-context (&rest create-flags)
  (%nvg:create-gl2 (apply #'mask 'create-flags create-flags)))


(defun destroy-context (context)
  (%nvg:delete-gl2 context))
