(cl:defpackage :nanovg.example
  (:use :cl)
  (:export run))
(cl:in-package :nanovg.example)


(defun render (nanovg-context)
  (%nvg:begin-frame nanovg-context 640 480 1.0)

  (%nvg:begin-path nanovg-context)
  (%nvg:rect nanovg-context 100f0 100f0 120f0 30f0)
  (%nvg:circle nanovg-context 120f0 120f0 5f0)
  (%nvg:path-winding nanovg-context %nvg:+hole+)

  (claw:c-with ((color %nvg:color))
    (%nvg:fill-color nanovg-context (%nvg:rgba color 255 192 0 255)))
  (%nvg:fill nanovg-context)

  (%nvg:end-frame nanovg-context))


(defun create-window ()
  (glfw:with-window-hints ((%glfw:+context-version-major+ 3)
                           (%glfw:+context-version-minor+ 3)
                           (%glfw:+opengl-profile+ %glfw:+opengl-core-profile+)
                           (%glfw:+opengl-forward-compat+ %glfw:+true+)
                           (%glfw:+depth-bits+ 24)
                           (%glfw:+stencil-bits+ 8))
    (%glfw:create-window 640 480 "Hello NanoVG" nil nil)))


(defun main ()
  ;; Initializing window and OpenGL context
  (when (= (%glfw:init) 0)
    (error "Failed to init GLFW"))
  (claw:c-with ((window %glfw:window :from (create-window)))
    (when (claw:wrapper-null-p window)
      (%glfw:terminate)
      (error "Failed to create GLFW window"))
    (%glfw:make-context-current window)
    ;; Mangling GL function pointers
    (glad:init)
    ;; Creating NanoVG context
    (let ((nanovg-context (%nvg:create-gl3 (logior %nvg:+antialias+ %nvg:+stencil-strokes+))))
      (unwind-protect
           (loop while (= (%glfw:window-should-close window) 0) do
             (gl:clear-color 1f0 1f0 1f0 1f0)
             (gl:clear :color-buffer-bit :depth-buffer-bit :stencil-buffer-bit)

             ;; Actually drawing into nanovg context and onto display
             (render nanovg-context)

             (%glfw:swap-buffers window)
             (%glfw:poll-events))
        ;; Cleaning up NanoVG context
        (%nvg:delete-gl3 nanovg-context)
        ;; Terminating GLFW context
        (%glfw:terminate)))))


(defun run ()
  (flet ((run-masked ()
           (claw:with-float-traps-masked ()
             (main))))
    (trivial-main-thread:call-in-main-thread #'run-masked :blocking t)))
