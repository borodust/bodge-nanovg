(load "~/quicklisp/setup.lisp")

(bind-arguments *target-arch*
                *gl-version*)

(when (equal *gl-version* "gl2")
  (pushnew :bodge-gl2 *features*))

(script "install-testing-dist")

(ql:quickload :claw)

(let ((claw::*local-cpu* *target-arch*))
  (ql:quickload :bodge-nanovg))
