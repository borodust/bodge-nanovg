(cffi:define-foreign-library (libnanovg
                              :search-path (asdf:system-relative-pathname :bodge-nanovg "lib/"))
  (:darwin "libnanovg.dylib.bodged")
  (:unix "libnanovg.so.bodged")
  (:windows "libnanovg.dll.bodged"))
