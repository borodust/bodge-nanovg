(cffi:define-foreign-library (libnanovg
                              :search-path (asdf:system-relative-pathname :bodge-nanovg "lib/"))
  (:darwin (:or "libnanovg.1.dylib" "libnanovg.dylib"))
  (:unix (:or "libnanovg.so.1" "libnanovg.so"))
  (:windows "libnanovg.dll"))


(cffi:use-foreign-library libnanovg)
