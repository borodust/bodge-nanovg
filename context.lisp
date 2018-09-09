(cl:in-package :nanovg)

(defun make-context (&rest create-flags)
  (%nvg:create-gl3 (apply #'mask 'create-flags create-flags)))


(defun destroy-context (context)
  (%nvg:delete-gl3 context))
