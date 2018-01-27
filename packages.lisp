(uiop:define-package :%nanovg
  (:nicknames :%nvg)
  (:use))

(uiop:define-package :nanovg
  (:nicknames :nvg)
  (:use :cl :claw :alexandria)
  (:export libnanovg
           create-flags
           image-flags
           make-context
           destroy-context
           make-rgba-image
           destroy-image))
