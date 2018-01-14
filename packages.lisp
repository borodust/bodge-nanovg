(uiop:define-package :%nanovg
  (:nicknames :%nvg)
  (:use))

(uiop:define-package :bodge-nanovg
  (:nicknames :nvg)
  (:use :cl :claw :alexandria)
  (:export create-flags
           image-flags
           make-context
           destroy-context
           make-rgba-image
           destroy-image))
