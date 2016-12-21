(in-package :bodge-nanovg)


(define-bitmask-from-enum (create-flags (:enum (%nvg:create-flags))))


(defun make-context (&rest create-flags)
  (%nvg:create-gl3 (apply #'mask 'create-flags create-flags)))


(defun destroy-context (context)
  (%nvg:delete-gl3 context))
