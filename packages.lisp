(in-package :bodge-nanovg.def)


(defpackage :%nanovg
  (:nicknames :%nvg)
  (:use))


(defpackage :bodge-nanovg
  (:use :cl :autowrap :plus-c :alexandria)
  (:export create-flags
           make-context
           destroy-context))
