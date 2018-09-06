(load "~/quicklisp/setup.lisp")

(script "install-testing-dist")

(ql:quickload :claw)

(let ((claw::*c2ffi-program* #-windows "c2ffi" #+windows "c2ffi.exe"))
  (ql:quickload :bodge-nanovg))
