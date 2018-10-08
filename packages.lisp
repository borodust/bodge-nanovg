(uiop:define-package :nanovg
  (:nicknames :nvg)
  (:use :cl :claw :alexandria)
  (:export libnanovg
           create-flags
           image-flags
           make-context
           destroy-context
           make-image
           make-rgba-image
           destroy-image))
