(cl:in-package :nanovg)


(define-bitmask-from-enum (create-flags (:enum (%nvg:create-flags))))

(define-bitmask-from-enum (image-flags (:enum (%nvg:image-flags))))


(defun image-flags (&rest flags)
  (apply #'mask 'image-flags flags))


(defun make-rgba-image (context width height data &rest flags)
  (%nvg:create-image-rgba context width height (apply #'image-flags flags) data))


(defun destroy-image (context image)
  (%nvg:delete-image context image))
