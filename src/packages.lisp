(uiop:define-package :nanovg
  (:nicknames :nvg)
  (:use :cl :alexandria)
  (:export #:make-context
           #:destroy-context
           #:make-image
           #:make-rgba-image
           #:destroy-image))
