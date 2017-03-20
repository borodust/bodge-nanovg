(in-package :bodge-nanovg.def)


(defpackage :%nanovg
  (:nicknames :%nvg)
  (:use))


(defpackage :bodge-nanovg
  (:nicknames :nvg)
  (:use :cl :autowrap :plus-c :alexandria)
  (:export create-flags
           image-flags
           make-context
           destroy-context
           make-rgba-image
           destroy-image))
