(cl:in-package :nanovg)


(defun image-flags (&rest flags)
  (cffi:foreign-bitfield-value '%nanovg:image-flags flags))


(defun create-flags (&rest flags)
  (cffi:foreign-bitfield-value '%nanovg:create-flags flags))


(defun make-rgba-image (context width height data-ptr &rest flags)
  (%nanovg:create-image-rgba context width height (apply #'image-flags flags) data-ptr))


(defun make-image (context data-ptr data-size &rest flags)
  (%nanovg:create-image-mem context (apply #'image-flags flags) data-ptr data-size))


(defun destroy-image (context image)
  (%nanovg:delete-image context image))
