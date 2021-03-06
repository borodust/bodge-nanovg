(cl:defpackage :nanovg.example
  (:use :cl :cffi-c-ref)
  (:export run))
(cl:in-package :nanovg.example)


(defun render (nanovg-context)
  (%nanovg:begin-frame nanovg-context 640f0 480f0 1.0)

  (%nanovg:begin-path nanovg-context)
  (%nanovg:rect nanovg-context 100f0 100f0 120f0 30f0)
  (%nanovg:circle nanovg-context 120f0 120f0 5f0)
  (%nanovg:path-winding nanovg-context (cffi:foreign-bitfield-value '%nanovg:solidity :hole))

  (c-with ((color %nanovg:color))
    (%nanovg:fill-color nanovg-context (%nanovg:rgba (color &) 255 192 0 255)))
  (%nanovg:fill nanovg-context)

  (%nanovg:end-frame nanovg-context))


(defun create-window ()
  (if (uiop:featurep :bodge-gl2)
      (glfw:with-window-hints ((%glfw:+context-version-major+ 2)
                               (%glfw:+context-version-minor+ 1)
                               (%glfw:+depth-bits+ 24)
                               (%glfw:+stencil-bits+ 8))
        (%glfw:create-window 640 480 "Hello NanoVG" nil nil))
      (glfw:with-window-hints ((%glfw:+context-version-major+ 3)
                               (%glfw:+context-version-minor+ 3)
                               (%glfw:+opengl-profile+ %glfw:+opengl-core-profile+)
                               (%glfw:+opengl-forward-compat+ %glfw:+true+)
                               (%glfw:+depth-bits+ 24)
                               (%glfw:+stencil-bits+ 8))
        (%glfw:create-window 640 480 "Hello NanoVG" nil nil))))


(defun main ()
  ;; Initializing window and OpenGL context
  (when (= (%glfw:init) 0)
    (error "Failed to init GLFW"))
  (c-let ((window %glfw:window :from (create-window)))
    (when (cffi:null-pointer-p (window &))
      (%glfw:terminate)
      (error "Failed to create GLFW window"))
    (%glfw:make-context-current (window &))
    ;; Mangling GL function pointers
    (glad:init)
    ;; Creating NanoVG context
    (let ((nanovg-context (nvg:make-context)))
      (unwind-protect
           (loop while (= (%glfw:window-should-close (window &)) 0) do
             (gl:clear-color 1f0 1f0 1f0 1f0)
             (gl:clear :color-buffer-bit :depth-buffer-bit :stencil-buffer-bit)

             ;; Actually drawing into nanovg context and onto display
             (render nanovg-context)

             (%glfw:swap-buffers (window &))
             (%glfw:poll-events))
        ;; Cleaning up NanoVG context
        (nvg:destroy-context nanovg-context)
        ;; Terminating GLFW context
        (%glfw:terminate)))))


(defun run ()
  (flet ((run-masked ()
           (float-features:with-float-traps-masked t
             (main))))
    (trivial-main-thread:call-in-main-thread #'run-masked :blocking t)))
