(cl:in-package :nanovg)


(defun image-flags (&rest flags)
  (cffi:foreign-bitfield-value '%nvg:image-flags flags))


(defun create-flags (&rest flags)
  (cffi:foreign-bitfield-value '%nvg:create-flags flags))


(defun make-rgba-image (context width height data-ptr &rest flags)
  (%nvg:create-image-rgba context width height (apply #'image-flags flags) data-ptr))


(defun make-image (context data-ptr data-size &rest flags)
  (%nvg:create-image-mem context (apply #'image-flags flags) data-ptr data-size))


(defun destroy-image (context image)
  (%nvg:delete-image context image))
