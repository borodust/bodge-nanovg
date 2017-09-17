(in-package :bodge-nanovg)


(cffi:define-foreign-library libnanovg
  (:darwin (:or "libnanovg.1.dylib" "libnanovg.dylib"))
  (:unix (:or "libnanovg.so.1" "libnanovg.so"))
  (:windows "libnanovg.dll"))


(cffi:use-foreign-library libnanovg)
