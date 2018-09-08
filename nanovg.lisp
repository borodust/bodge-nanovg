(cl:in-package :nanovg)


(define-bitmask-from-enum (create-flags (:enum (%nvg:create-flags))))

(define-bitmask-from-enum (image-flags (:enum (%nvg:image-flags))))


(defun image-flags (&rest flags)
  (apply #'mask 'image-flags flags))


(defun make-context (&rest create-flags)
  #-bodge-gl2
  (%nvg:create-gl3 (apply #'mask 'create-flags create-flags))
  #+bodge-gl2
  (%nvg:create-gl2 (apply #'mask 'create-flags create-flags)))


(defun destroy-context (context)
  #-bodge-gl2
  (%nvg:delete-gl3 context)
  #+bodge-gl2
  (%nvg:delete-gl2 context))


(defun make-rgba-image (context width height data &rest flags)
  (%nvg:create-image-rgba context width height (apply #'image-flags flags) data))


(defun destroy-image (context image)
  (%nvg:delete-image context image))
