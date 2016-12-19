(in-package :bodge-nanovg)


(cffi:define-foreign-library (libnanovg
                              :search-path #.(merge-pathnames
                                              "lib/build/"
                                              (directory-namestring
                                               (or *compile-file-truename* *load-truename*))))
  (:darwin (:or "libnanovg.1.dylib" "libnanovg.dylib"))
  (:unix (:or "libnanovg.so.1" "libnanovg.so"))
  (t (:default "libnanovg.1" "libnanovg")))


(cffi:use-foreign-library libnanovg)
