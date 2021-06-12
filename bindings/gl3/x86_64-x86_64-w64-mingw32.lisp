(uiop:define-package :%nanovg (:use))
(uiop:define-package :bodge-nanovg-gl3-bindings~pristine (:use :cl))
(common-lisp:in-package :bodge-nanovg-gl3-bindings~pristine)

(cffi:defbitfield (%nanovg::align :unsigned-int)
                  "/home/borodust/devel/repo/bodge-projects/bodge-nanovg/src/lib/nanovg/src/nanovg.h:74:6"
                  (:left 1)
                  (:center 2)
                  (:right 4)
                  (:top 8)
                  (:middle 16)
                  (:bottom 32)
                  (:baseline 64))

(cffi:defbitfield (%nanovg::blend-factor :unsigned-int)
                  "/home/borodust/devel/repo/bodge-projects/bodge-nanovg/src/lib/nanovg/src/nanovg.h:86:6"
                  (:zero 1)
                  (:one 2)
                  (:src-color 4)
                  (:one-minus-src-color 8)
                  (:dst-color 16)
                  (:one-minus-dst-color 32)
                  (:src-alpha 64)
                  (:one-minus-src-alpha 128)
                  (:dst-alpha 256)
                  (:one-minus-dst-alpha 512)
                  (:src-alpha-saturate 1024))

(cffi:defcenum (%nanovg::composite-operation :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nanovg/src/lib/nanovg/src/nanovg.h:100:6"
               (:source-over 0)
               (:source-in 1)
               (:source-out 2)
               (:atop 3)
               (:destination-over 4)
               (:destination-in 5)
               (:destination-out 6)
               (:destination-atop 7)
               (:lighter 8)
               (:copy 9)
               (:xor 10))

(cffi:defbitfield (%nanovg::create-flags :unsigned-int)
                  "/home/borodust/devel/repo/bodge-projects/bodge-nanovg/src/lib/nanovg/src/nanovg_gl.h:27:6"
                  (:antialias 1)
                  (:stencil-strokes 2)
                  (:debug 4))

(cffi:defbitfield (%nanovg::image-flags :unsigned-int)
                  "/home/borodust/devel/repo/bodge-projects/bodge-nanovg/src/lib/nanovg/src/nanovg.h:138:6"
                  (:generate-mipmaps 1)
                  (:repeatx 2)
                  (:repeaty 4)
                  (:flipy 8)
                  (:premultiplied 16)
                  (:nearest 32))

(cffi:defbitfield (%nanovg::image-flags-gl :unsigned-int)
                  "/home/borodust/devel/repo/bodge-projects/bodge-nanovg/src/lib/nanovg/src/nanovg_gl.h:98:6"
                  (:image-nodelete 65536))

(cffi:defcenum (%nanovg::line-cap :unsigned-int)
               "/home/borodust/devel/repo/bodge-projects/bodge-nanovg/src/lib/nanovg/src/nanovg.h:66:6"
               (:butt 0)
               (:round 1)
               (:square 2)
               (:bevel 3)
               (:miter 4))

(cffi:defbitfield (%nanovg::solidity :unsigned-int)
                  "/home/borodust/devel/repo/bodge-projects/bodge-nanovg/src/lib/nanovg/src/nanovg.h:61:6"
                  (:solid 1)
                  (:hole 2))

(cffi:defbitfield (%nanovg::texture :unsigned-int)
                  "/home/borodust/devel/repo/bodge-projects/bodge-nanovg/src/lib/nanovg/src/nanovg.h:618:6"
                  (:alpha 1)
                  (:rgba 2))

(cffi:defbitfield (%nanovg::winding :unsigned-int)
                  "/home/borodust/devel/repo/bodge-projects/bodge-nanovg/src/lib/nanovg/src/nanovg.h:56:6"
                  (:ccw 1)
                  (:cw 2))

(defparameter %nanovg::+khronos-false+ 0)

(defparameter %nanovg::+khronos-true+ 1)

(defparameter %nanovg::+khronos-boolean-enum-force-size+ 2147483647)

(cffi:defcstruct (%nanovg::context :size 0))

(cffi:defctype %nanovg::context (:struct %nanovg::context))

(declaim (inline %nanovg::add-fallback-font))

(cffi:defcfun ("nvgAddFallbackFont" %nanovg::add-fallback-font)
              :int
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::base-font claw-utils:claw-string)
              (%nanovg::fallback-font claw-utils:claw-string))

(declaim (inline %nanovg::add-fallback-font-id))

(cffi:defcfun ("nvgAddFallbackFontId" %nanovg::add-fallback-font-id)
              :int
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::base-font :int)
              (%nanovg::fallback-font :int))

(declaim (inline %nanovg::arc))

(cffi:defcfun ("nvgArc" %nanovg::arc)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::cx :float)
              (%nanovg::cy :float)
              (%nanovg::r :float)
              (%nanovg::a0 :float)
              (%nanovg::a1 :float)
              (%nanovg::dir :int))

(declaim (inline %nanovg::arc-to))

(cffi:defcfun ("nvgArcTo" %nanovg::arc-to)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::x1 :float)
              (%nanovg::y1 :float)
              (%nanovg::x2 :float)
              (%nanovg::y2 :float)
              (%nanovg::radius :float))

(declaim (inline %nanovg::begin-frame))

(cffi:defcfun ("nvgBeginFrame" %nanovg::begin-frame)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::window-width :float)
              (%nanovg::window-height :float)
              (%nanovg::device-pixel-ratio :float))

(declaim (inline %nanovg::begin-path))

(cffi:defcfun ("nvgBeginPath" %nanovg::begin-path)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context)))

(declaim (inline %nanovg::bezier-to))

(cffi:defcfun ("nvgBezierTo" %nanovg::bezier-to)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::c1x :float)
              (%nanovg::c1y :float)
              (%nanovg::c2x :float)
              (%nanovg::c2y :float)
              (%nanovg::x :float)
              (%nanovg::y :float))

(cffi:defcstruct (%nanovg::|C:@S@NV-GCOLOR@UA@SA| :size 16)
                 (%nanovg::r :float :offset 0)
                 (%nanovg::g :float :offset 4)
                 (%nanovg::b :float :offset 8)
                 (%nanovg::a :float :offset 12))

(cffi:defcunion (%nanovg::|C:@S@NV-GCOLOR@UA| :size 16)
                (%nanovg::rgba :float :count 4)
                (%nanovg::@0
                 (:struct %nanovg::|C:@S@NV-GCOLOR@UA@SA|)))

(cffi:defcstruct (%nanovg::color :size 16)
                 (%nanovg::@0 (:union %nanovg::|C:@S@NV-GCOLOR@UA|)
                  :offset 0))

(cffi:defctype %nanovg::color (:struct %nanovg::color))

(cffi:defcstruct (%nanovg::paint :size 76)
                 (%nanovg::xform :float :count 6 :offset 0)
                 (%nanovg::extent :float :count 2 :offset 24)
                 (%nanovg::radius :float :offset 32)
                 (%nanovg::feather :float :offset 36)
                 (%nanovg::inner-color %nanovg::color :offset 40)
                 (%nanovg::outer-color %nanovg::color :offset 56)
                 (%nanovg::image :int :offset 72))

(cffi:defctype %nanovg::paint (:struct %nanovg::paint))

(declaim (inline %nanovg::box-gradient))

(cffi:defcfun ("__claw_nvgBoxGradient" %nanovg::box-gradient)
              (claw-utils:claw-pointer %nanovg::paint)
              (%nanovg::%%claw-result-
               (claw-utils:claw-pointer %nanovg::paint))
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::x :float)
              (%nanovg::y :float)
              (%nanovg::w :float)
              (%nanovg::h :float)
              (%nanovg::r :float)
              (%nanovg::f :float)
              (%nanovg::icol
               (claw-utils:claw-pointer %nanovg::color))
              (%nanovg::ocol
               (claw-utils:claw-pointer %nanovg::color)))

(declaim (inline %nanovg::cancel-frame))

(cffi:defcfun ("nvgCancelFrame" %nanovg::cancel-frame)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context)))

(declaim (inline %nanovg::circle))

(cffi:defcfun ("nvgCircle" %nanovg::circle)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::cx :float)
              (%nanovg::cy :float)
              (%nanovg::r :float))

(declaim (inline %nanovg::close-path))

(cffi:defcfun ("nvgClosePath" %nanovg::close-path)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context)))

(declaim (inline %nanovg::create-font))

(cffi:defcfun ("nvgCreateFont" %nanovg::create-font)
              :int
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::name claw-utils:claw-string)
              (%nanovg::filename claw-utils:claw-string))

(declaim (inline %nanovg::create-font-mem))

(cffi:defcfun ("nvgCreateFontMem" %nanovg::create-font-mem)
              :int
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::name claw-utils:claw-string)
              (%nanovg::data
               (claw-utils:claw-pointer :unsigned-char))
              (%nanovg::ndata :int)
              (%nanovg::free-data :int))

(declaim (inline %nanovg::create-gl3))

(cffi:defcfun ("nvgCreateGL3" %nanovg::create-gl3)
              (claw-utils:claw-pointer %nanovg::context)
              (%nanovg::flags :int))

(declaim (inline %nanovg::create-image))

(cffi:defcfun ("nvgCreateImage" %nanovg::create-image)
              :int
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::filename claw-utils:claw-string)
              (%nanovg::image-flags :int))

(declaim (inline %nanovg::create-image-mem))

(cffi:defcfun ("nvgCreateImageMem" %nanovg::create-image-mem)
              :int
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::image-flags :int)
              (%nanovg::data
               (claw-utils:claw-pointer :unsigned-char))
              (%nanovg::ndata :int))

(declaim (inline %nanovg::create-image-rgba))

(cffi:defcfun ("nvgCreateImageRGBA" %nanovg::create-image-rgba)
              :int
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::w :int)
              (%nanovg::h :int)
              (%nanovg::image-flags :int)
              (%nanovg::data
               (claw-utils:claw-pointer :unsigned-char)))

(cffi:defcstruct (%nanovg::params :size 112)
                 (%nanovg::user-ptr (claw-utils:claw-pointer :void)
                  :offset 0)
                 (%nanovg::edge-anti-alias :int :offset 8)
                 (%nanovg::render-create
                  (claw-utils:claw-pointer :void) :offset 16)
                 (%nanovg::render-create-texture
                  (claw-utils:claw-pointer :void) :offset 24)
                 (%nanovg::render-delete-texture
                  (claw-utils:claw-pointer :void) :offset 32)
                 (%nanovg::render-update-texture
                  (claw-utils:claw-pointer :void) :offset 40)
                 (%nanovg::render-get-texture-size
                  (claw-utils:claw-pointer :void) :offset 48)
                 (%nanovg::render-viewport
                  (claw-utils:claw-pointer :void) :offset 56)
                 (%nanovg::render-cancel
                  (claw-utils:claw-pointer :void) :offset 64)
                 (%nanovg::render-flush
                  (claw-utils:claw-pointer :void) :offset 72)
                 (%nanovg::render-fill
                  (claw-utils:claw-pointer :void) :offset 80)
                 (%nanovg::render-stroke
                  (claw-utils:claw-pointer :void) :offset 88)
                 (%nanovg::render-triangles
                  (claw-utils:claw-pointer :void) :offset 96)
                 (%nanovg::render-delete
                  (claw-utils:claw-pointer :void) :offset 104))

(cffi:defctype %nanovg::params (:struct %nanovg::params))

(declaim (inline %nanovg::create-internal))

(cffi:defcfun ("nvgCreateInternal" %nanovg::create-internal)
              (claw-utils:claw-pointer %nanovg::context)
              (%nanovg::params
               (claw-utils:claw-pointer %nanovg::params)))

(declaim (inline %nanovg::current-transform))

(cffi:defcfun ("nvgCurrentTransform" %nanovg::current-transform)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::xform (claw-utils:claw-pointer :float)))

(declaim (inline %nanovg::debug-dump-path-cache))

(cffi:defcfun ("nvgDebugDumpPathCache"
               %nanovg::debug-dump-path-cache)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context)))

(declaim (inline %nanovg::deg-to-rad))

(cffi:defcfun ("nvgDegToRad" %nanovg::deg-to-rad)
              :float
              (%nanovg::deg :float))

(declaim (inline %nanovg::delete-gl3))

(cffi:defcfun ("nvgDeleteGL3" %nanovg::delete-gl3)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context)))

(declaim (inline %nanovg::delete-image))

(cffi:defcfun ("nvgDeleteImage" %nanovg::delete-image)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::image :int))

(declaim (inline %nanovg::delete-internal))

(cffi:defcfun ("nvgDeleteInternal" %nanovg::delete-internal)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context)))

(declaim (inline %nanovg::ellipse))

(cffi:defcfun ("nvgEllipse" %nanovg::ellipse)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::cx :float)
              (%nanovg::cy :float)
              (%nanovg::rx :float)
              (%nanovg::ry :float))

(declaim (inline %nanovg::end-frame))

(cffi:defcfun ("nvgEndFrame" %nanovg::end-frame)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context)))

(declaim (inline %nanovg::fill))

(cffi:defcfun ("nvgFill" %nanovg::fill)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context)))

(declaim (inline %nanovg::fill-color))

(cffi:defcfun ("__claw_nvgFillColor" %nanovg::fill-color)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::color
               (claw-utils:claw-pointer %nanovg::color)))

(declaim (inline %nanovg::fill-paint))

(cffi:defcfun ("__claw_nvgFillPaint" %nanovg::fill-paint)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::paint
               (claw-utils:claw-pointer %nanovg::paint)))

(declaim (inline %nanovg::find-font))

(cffi:defcfun ("nvgFindFont" %nanovg::find-font)
              :int
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::name claw-utils:claw-string))

(declaim (inline %nanovg::font-blur))

(cffi:defcfun ("nvgFontBlur" %nanovg::font-blur)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::blur :float))

(declaim (inline %nanovg::font-face))

(cffi:defcfun ("nvgFontFace" %nanovg::font-face)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::font claw-utils:claw-string))

(declaim (inline %nanovg::font-face-id))

(cffi:defcfun ("nvgFontFaceId" %nanovg::font-face-id)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::font :int))

(declaim (inline %nanovg::font-size))

(cffi:defcfun ("nvgFontSize" %nanovg::font-size)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::size :float))

(declaim (inline %nanovg::global-alpha))

(cffi:defcfun ("nvgGlobalAlpha" %nanovg::global-alpha)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::alpha :float))

(declaim (inline %nanovg::global-composite-blend-func))

(cffi:defcfun ("nvgGlobalCompositeBlendFunc"
               %nanovg::global-composite-blend-func)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::sfactor :int)
              (%nanovg::dfactor :int))

(declaim (inline %nanovg::global-composite-blend-func-separate))

(cffi:defcfun ("nvgGlobalCompositeBlendFuncSeparate"
               %nanovg::global-composite-blend-func-separate)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::src-rgb :int)
              (%nanovg::dst-rgb :int)
              (%nanovg::src-alpha :int)
              (%nanovg::dst-alpha :int))

(declaim (inline %nanovg::global-composite-operation))

(cffi:defcfun ("nvgGlobalCompositeOperation"
               %nanovg::global-composite-operation)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::op :int))

(declaim (inline %nanovg::hsl))

(cffi:defcfun ("__claw_nvgHSL" %nanovg::hsl)
              (claw-utils:claw-pointer %nanovg::color)
              (%nanovg::%%claw-result-
               (claw-utils:claw-pointer %nanovg::color))
              (%nanovg::h :float)
              (%nanovg::s :float)
              (%nanovg::l :float))

(declaim (inline %nanovg::hsla))

(cffi:defcfun ("__claw_nvgHSLA" %nanovg::hsla)
              (claw-utils:claw-pointer %nanovg::color)
              (%nanovg::%%claw-result-
               (claw-utils:claw-pointer %nanovg::color))
              (%nanovg::h :float)
              (%nanovg::s :float)
              (%nanovg::l :float)
              (%nanovg::a :unsigned-char))

(declaim (inline %nanovg::image-pattern))

(cffi:defcfun ("__claw_nvgImagePattern" %nanovg::image-pattern)
              (claw-utils:claw-pointer %nanovg::paint)
              (%nanovg::%%claw-result-
               (claw-utils:claw-pointer %nanovg::paint))
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::ox :float)
              (%nanovg::oy :float)
              (%nanovg::ex :float)
              (%nanovg::ey :float)
              (%nanovg::angle :float)
              (%nanovg::image :int)
              (%nanovg::alpha :float))

(declaim (inline %nanovg::image-size))

(cffi:defcfun ("nvgImageSize" %nanovg::image-size)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::image :int)
              (%nanovg::w (claw-utils:claw-pointer :int))
              (%nanovg::h (claw-utils:claw-pointer :int)))

(declaim (inline %nanovg::internal-params))

(cffi:defcfun ("nvgInternalParams" %nanovg::internal-params)
              (claw-utils:claw-pointer %nanovg::params)
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context)))

(declaim (inline %nanovg::intersect-scissor))

(cffi:defcfun ("nvgIntersectScissor" %nanovg::intersect-scissor)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::x :float)
              (%nanovg::y :float)
              (%nanovg::w :float)
              (%nanovg::h :float))

(declaim (inline %nanovg::lerp-rgba))

(cffi:defcfun ("__claw_nvgLerpRGBA" %nanovg::lerp-rgba)
              (claw-utils:claw-pointer %nanovg::color)
              (%nanovg::%%claw-result-
               (claw-utils:claw-pointer %nanovg::color))
              (%nanovg::c0 (claw-utils:claw-pointer %nanovg::color))
              (%nanovg::c1 (claw-utils:claw-pointer %nanovg::color))
              (%nanovg::u :float))

(declaim (inline %nanovg::line-cap))

(cffi:defcfun ("nvgLineCap" %nanovg::line-cap)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::cap :int))

(declaim (inline %nanovg::line-join))

(cffi:defcfun ("nvgLineJoin" %nanovg::line-join)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::join :int))

(declaim (inline %nanovg::line-to))

(cffi:defcfun ("nvgLineTo" %nanovg::line-to)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::x :float)
              (%nanovg::y :float))

(declaim (inline %nanovg::linear-gradient))

(cffi:defcfun ("__claw_nvgLinearGradient" %nanovg::linear-gradient)
              (claw-utils:claw-pointer %nanovg::paint)
              (%nanovg::%%claw-result-
               (claw-utils:claw-pointer %nanovg::paint))
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::sx :float)
              (%nanovg::sy :float)
              (%nanovg::ex :float)
              (%nanovg::ey :float)
              (%nanovg::icol
               (claw-utils:claw-pointer %nanovg::color))
              (%nanovg::ocol
               (claw-utils:claw-pointer %nanovg::color)))

(declaim (inline %nanovg::miter-limit))

(cffi:defcfun ("nvgMiterLimit" %nanovg::miter-limit)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::limit :float))

(declaim (inline %nanovg::move-to))

(cffi:defcfun ("nvgMoveTo" %nanovg::move-to)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::x :float)
              (%nanovg::y :float))

(declaim (inline %nanovg::path-winding))

(cffi:defcfun ("nvgPathWinding" %nanovg::path-winding)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::dir :int))

(declaim (inline %nanovg::quad-to))

(cffi:defcfun ("nvgQuadTo" %nanovg::quad-to)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::cx :float)
              (%nanovg::cy :float)
              (%nanovg::x :float)
              (%nanovg::y :float))

(declaim (inline %nanovg::rgb))

(cffi:defcfun ("__claw_nvgRGB" %nanovg::rgb)
              (claw-utils:claw-pointer %nanovg::color)
              (%nanovg::%%claw-result-
               (claw-utils:claw-pointer %nanovg::color))
              (%nanovg::r :unsigned-char)
              (%nanovg::g :unsigned-char)
              (%nanovg::b :unsigned-char))

(declaim (inline %nanovg::rgba))

(cffi:defcfun ("__claw_nvgRGBA" %nanovg::rgba)
              (claw-utils:claw-pointer %nanovg::color)
              (%nanovg::%%claw-result-
               (claw-utils:claw-pointer %nanovg::color))
              (%nanovg::r :unsigned-char)
              (%nanovg::g :unsigned-char)
              (%nanovg::b :unsigned-char)
              (%nanovg::a :unsigned-char))

(declaim (inline %nanovg::rgba-f))

(cffi:defcfun ("__claw_nvgRGBAf" %nanovg::rgba-f)
              (claw-utils:claw-pointer %nanovg::color)
              (%nanovg::%%claw-result-
               (claw-utils:claw-pointer %nanovg::color))
              (%nanovg::r :float)
              (%nanovg::g :float)
              (%nanovg::b :float)
              (%nanovg::a :float))

(declaim (inline %nanovg::rgb-f))

(cffi:defcfun ("__claw_nvgRGBf" %nanovg::rgb-f)
              (claw-utils:claw-pointer %nanovg::color)
              (%nanovg::%%claw-result-
               (claw-utils:claw-pointer %nanovg::color))
              (%nanovg::r :float)
              (%nanovg::g :float)
              (%nanovg::b :float))

(declaim (inline %nanovg::rad-to-deg))

(cffi:defcfun ("nvgRadToDeg" %nanovg::rad-to-deg)
              :float
              (%nanovg::rad :float))

(declaim (inline %nanovg::radial-gradient))

(cffi:defcfun ("__claw_nvgRadialGradient" %nanovg::radial-gradient)
              (claw-utils:claw-pointer %nanovg::paint)
              (%nanovg::%%claw-result-
               (claw-utils:claw-pointer %nanovg::paint))
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::cx :float)
              (%nanovg::cy :float)
              (%nanovg::inr :float)
              (%nanovg::outr :float)
              (%nanovg::icol
               (claw-utils:claw-pointer %nanovg::color))
              (%nanovg::ocol
               (claw-utils:claw-pointer %nanovg::color)))

(declaim (inline %nanovg::rect))

(cffi:defcfun ("nvgRect" %nanovg::rect)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::x :float)
              (%nanovg::y :float)
              (%nanovg::w :float)
              (%nanovg::h :float))

(declaim (inline %nanovg::reset))

(cffi:defcfun ("nvgReset" %nanovg::reset)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context)))

(declaim (inline %nanovg::reset-scissor))

(cffi:defcfun ("nvgResetScissor" %nanovg::reset-scissor)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context)))

(declaim (inline %nanovg::reset-transform))

(cffi:defcfun ("nvgResetTransform" %nanovg::reset-transform)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context)))

(declaim (inline %nanovg::restore))

(cffi:defcfun ("nvgRestore" %nanovg::restore)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context)))

(declaim (inline %nanovg::rotate))

(cffi:defcfun ("nvgRotate" %nanovg::rotate)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::angle :float))

(declaim (inline %nanovg::rounded-rect))

(cffi:defcfun ("nvgRoundedRect" %nanovg::rounded-rect)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::x :float)
              (%nanovg::y :float)
              (%nanovg::w :float)
              (%nanovg::h :float)
              (%nanovg::r :float))

(declaim (inline %nanovg::rounded-rect-varying))

(cffi:defcfun ("nvgRoundedRectVarying" %nanovg::rounded-rect-varying)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::x :float)
              (%nanovg::y :float)
              (%nanovg::w :float)
              (%nanovg::h :float)
              (%nanovg::rad-top-left :float)
              (%nanovg::rad-top-right :float)
              (%nanovg::rad-bottom-right :float)
              (%nanovg::rad-bottom-left :float))

(declaim (inline %nanovg::save))

(cffi:defcfun ("nvgSave" %nanovg::save)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context)))

(declaim (inline %nanovg::scale))

(cffi:defcfun ("nvgScale" %nanovg::scale)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::x :float)
              (%nanovg::y :float))

(declaim (inline %nanovg::scissor))

(cffi:defcfun ("nvgScissor" %nanovg::scissor)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::x :float)
              (%nanovg::y :float)
              (%nanovg::w :float)
              (%nanovg::h :float))

(declaim (inline %nanovg::shape-anti-alias))

(cffi:defcfun ("nvgShapeAntiAlias" %nanovg::shape-anti-alias)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::enabled :int))

(declaim (inline %nanovg::skew-x))

(cffi:defcfun ("nvgSkewX" %nanovg::skew-x)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::angle :float))

(declaim (inline %nanovg::skew-y))

(cffi:defcfun ("nvgSkewY" %nanovg::skew-y)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::angle :float))

(declaim (inline %nanovg::stroke))

(cffi:defcfun ("nvgStroke" %nanovg::stroke)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context)))

(declaim (inline %nanovg::stroke-color))

(cffi:defcfun ("__claw_nvgStrokeColor" %nanovg::stroke-color)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::color
               (claw-utils:claw-pointer %nanovg::color)))

(declaim (inline %nanovg::stroke-paint))

(cffi:defcfun ("__claw_nvgStrokePaint" %nanovg::stroke-paint)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::paint
               (claw-utils:claw-pointer %nanovg::paint)))

(declaim (inline %nanovg::stroke-width))

(cffi:defcfun ("nvgStrokeWidth" %nanovg::stroke-width)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::size :float))

(declaim (inline %nanovg::text))

(cffi:defcfun ("nvgText" %nanovg::text)
              :float
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::x :float)
              (%nanovg::y :float)
              (%nanovg::string claw-utils:claw-string)
              (%nanovg::end claw-utils:claw-string))

(declaim (inline %nanovg::text-align))

(cffi:defcfun ("nvgTextAlign" %nanovg::text-align)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::align :int))

(declaim (inline %nanovg::text-bounds))

(cffi:defcfun ("nvgTextBounds" %nanovg::text-bounds)
              :float
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::x :float)
              (%nanovg::y :float)
              (%nanovg::string claw-utils:claw-string)
              (%nanovg::end claw-utils:claw-string)
              (%nanovg::bounds (claw-utils:claw-pointer :float)))

(declaim (inline %nanovg::text-box))

(cffi:defcfun ("nvgTextBox" %nanovg::text-box)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::x :float)
              (%nanovg::y :float)
              (%nanovg::break-row-width :float)
              (%nanovg::string claw-utils:claw-string)
              (%nanovg::end claw-utils:claw-string))

(declaim (inline %nanovg::text-box-bounds))

(cffi:defcfun ("nvgTextBoxBounds" %nanovg::text-box-bounds)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::x :float)
              (%nanovg::y :float)
              (%nanovg::break-row-width :float)
              (%nanovg::string claw-utils:claw-string)
              (%nanovg::end claw-utils:claw-string)
              (%nanovg::bounds (claw-utils:claw-pointer :float)))

(cffi:defcstruct (%nanovg::text-row :size 40)
                 (%nanovg::start claw-utils:claw-string :offset 0)
                 (%nanovg::end claw-utils:claw-string :offset 8)
                 (%nanovg::next claw-utils:claw-string :offset 16)
                 (%nanovg::width :float :offset 24)
                 (%nanovg::minx :float :offset 28)
                 (%nanovg::maxx :float :offset 32))

(cffi:defctype %nanovg::text-row (:struct %nanovg::text-row))

(declaim (inline %nanovg::text-break-lines))

(cffi:defcfun ("nvgTextBreakLines" %nanovg::text-break-lines)
              :int
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::string claw-utils:claw-string)
              (%nanovg::end claw-utils:claw-string)
              (%nanovg::break-row-width :float)
              (%nanovg::rows
               (claw-utils:claw-pointer %nanovg::text-row))
              (%nanovg::max-rows :int))

(cffi:defcstruct (%nanovg::glyph-position :size 24)
                 (%nanovg::str claw-utils:claw-string :offset 0)
                 (%nanovg::x :float :offset 8)
                 (%nanovg::minx :float :offset 12)
                 (%nanovg::maxx :float :offset 16))

(cffi:defctype %nanovg::glyph-position
               (:struct %nanovg::glyph-position))

(declaim (inline %nanovg::text-glyph-positions))

(cffi:defcfun ("nvgTextGlyphPositions" %nanovg::text-glyph-positions)
              :int
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::x :float)
              (%nanovg::y :float)
              (%nanovg::string claw-utils:claw-string)
              (%nanovg::end claw-utils:claw-string)
              (%nanovg::positions
               (claw-utils:claw-pointer %nanovg::glyph-position))
              (%nanovg::max-positions :int))

(declaim (inline %nanovg::text-letter-spacing))

(cffi:defcfun ("nvgTextLetterSpacing" %nanovg::text-letter-spacing)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::spacing :float))

(declaim (inline %nanovg::text-line-height))

(cffi:defcfun ("nvgTextLineHeight" %nanovg::text-line-height)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::line-height :float))

(declaim (inline %nanovg::text-metrics))

(cffi:defcfun ("nvgTextMetrics" %nanovg::text-metrics)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::ascender (claw-utils:claw-pointer :float))
              (%nanovg::descender (claw-utils:claw-pointer :float))
              (%nanovg::lineh (claw-utils:claw-pointer :float)))

(declaim (inline %nanovg::trans-rgba))

(cffi:defcfun ("__claw_nvgTransRGBA" %nanovg::trans-rgba)
              (claw-utils:claw-pointer %nanovg::color)
              (%nanovg::%%claw-result-
               (claw-utils:claw-pointer %nanovg::color))
              (%nanovg::c0 (claw-utils:claw-pointer %nanovg::color))
              (%nanovg::a :unsigned-char))

(declaim (inline %nanovg::trans-rgb-af))

(cffi:defcfun ("__claw_nvgTransRGBAf" %nanovg::trans-rgb-af)
              (claw-utils:claw-pointer %nanovg::color)
              (%nanovg::%%claw-result-
               (claw-utils:claw-pointer %nanovg::color))
              (%nanovg::c0 (claw-utils:claw-pointer %nanovg::color))
              (%nanovg::a :float))

(declaim (inline %nanovg::transform))

(cffi:defcfun ("nvgTransform" %nanovg::transform)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::a :float)
              (%nanovg::b :float)
              (%nanovg::c :float)
              (%nanovg::d :float)
              (%nanovg::e :float)
              (%nanovg::f :float))

(declaim (inline %nanovg::transform-identity))

(cffi:defcfun ("nvgTransformIdentity" %nanovg::transform-identity)
              :void
              (%nanovg::dst (claw-utils:claw-pointer :float)))

(declaim (inline %nanovg::transform-inverse))

(cffi:defcfun ("nvgTransformInverse" %nanovg::transform-inverse)
              :int
              (%nanovg::dst (claw-utils:claw-pointer :float))
              (%nanovg::src (claw-utils:claw-pointer :float)))

(declaim (inline %nanovg::transform-multiply))

(cffi:defcfun ("nvgTransformMultiply" %nanovg::transform-multiply)
              :void
              (%nanovg::dst (claw-utils:claw-pointer :float))
              (%nanovg::src (claw-utils:claw-pointer :float)))

(declaim (inline %nanovg::transform-point))

(cffi:defcfun ("nvgTransformPoint" %nanovg::transform-point)
              :void
              (%nanovg::dstx (claw-utils:claw-pointer :float))
              (%nanovg::dsty (claw-utils:claw-pointer :float))
              (%nanovg::xform (claw-utils:claw-pointer :float))
              (%nanovg::srcx :float)
              (%nanovg::srcy :float))

(declaim (inline %nanovg::transform-premultiply))

(cffi:defcfun ("nvgTransformPremultiply"
               %nanovg::transform-premultiply)
              :void
              (%nanovg::dst (claw-utils:claw-pointer :float))
              (%nanovg::src (claw-utils:claw-pointer :float)))

(declaim (inline %nanovg::transform-rotate))

(cffi:defcfun ("nvgTransformRotate" %nanovg::transform-rotate)
              :void
              (%nanovg::dst (claw-utils:claw-pointer :float))
              (%nanovg::a :float))

(declaim (inline %nanovg::transform-scale))

(cffi:defcfun ("nvgTransformScale" %nanovg::transform-scale)
              :void
              (%nanovg::dst (claw-utils:claw-pointer :float))
              (%nanovg::sx :float)
              (%nanovg::sy :float))

(declaim (inline %nanovg::transform-skew-x))

(cffi:defcfun ("nvgTransformSkewX" %nanovg::transform-skew-x)
              :void
              (%nanovg::dst (claw-utils:claw-pointer :float))
              (%nanovg::a :float))

(declaim (inline %nanovg::transform-skew-y))

(cffi:defcfun ("nvgTransformSkewY" %nanovg::transform-skew-y)
              :void
              (%nanovg::dst (claw-utils:claw-pointer :float))
              (%nanovg::a :float))

(declaim (inline %nanovg::transform-translate))

(cffi:defcfun ("nvgTransformTranslate" %nanovg::transform-translate)
              :void
              (%nanovg::dst (claw-utils:claw-pointer :float))
              (%nanovg::tx :float)
              (%nanovg::ty :float))

(declaim (inline %nanovg::translate))

(cffi:defcfun ("nvgTranslate" %nanovg::translate)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::x :float)
              (%nanovg::y :float))

(declaim (inline %nanovg::update-image))

(cffi:defcfun ("nvgUpdateImage" %nanovg::update-image)
              :void
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::image :int)
              (%nanovg::data
               (claw-utils:claw-pointer :unsigned-char)))

(cffi:defctype %nanovg::g-luint :unsigned-int)

(declaim (inline %nanovg::create-image-from-handle-gl3))

(cffi:defcfun ("nvglCreateImageFromHandleGL3"
               %nanovg::create-image-from-handle-gl3)
              :int
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::texture-id %nanovg::g-luint)
              (%nanovg::w :int)
              (%nanovg::h :int)
              (%nanovg::flags :int))

(declaim (inline %nanovg::image-handle-gl3))

(cffi:defcfun ("nvglImageHandleGL3" %nanovg::image-handle-gl3)
              %nanovg::g-luint
              (%nanovg::ctx
               (claw-utils:claw-pointer %nanovg::context))
              (%nanovg::image :int))

(cffi:defcstruct (%nanovg::composite-operation-state :size 16)
                 (%nanovg::src-rgb :int :offset 0)
                 (%nanovg::dst-rgb :int :offset 4)
                 (%nanovg::src-alpha :int :offset 8)
                 (%nanovg::dst-alpha :int :offset 12))

(cffi:defcstruct (%nanovg::vertex :size 16)
                 (%nanovg::x :float :offset 0)
                 (%nanovg::y :float :offset 4)
                 (%nanovg::u :float :offset 8)
                 (%nanovg::v :float :offset 12))

(cffi:defctype %nanovg::vertex (:struct %nanovg::vertex))

(cffi:defcstruct (%nanovg::path :size 56)
                 (%nanovg::first :int :offset 0)
                 (%nanovg::count :int :offset 4)
                 (%nanovg::closed :unsigned-char :offset 8)
                 (%nanovg::nbevel :int :offset 12)
                 (%nanovg::fill
                  (claw-utils:claw-pointer %nanovg::vertex) :offset
                  16)
                 (%nanovg::nfill :int :offset 24)
                 (%nanovg::stroke
                  (claw-utils:claw-pointer %nanovg::vertex) :offset
                  32)
                 (%nanovg::nstroke :int :offset 40)
                 (%nanovg::winding :int :offset 44)
                 (%nanovg::convex :int :offset 48))

(cffi:defcstruct (%nanovg::scissor :size 32)
                 (%nanovg::xform :float :count 6 :offset 0)
                 (%nanovg::extent :float :count 2 :offset 24))

(cffi:defctype %nanovg::composite-operation-state
               (:struct %nanovg::composite-operation-state))

(cffi:defctype %nanovg::path (:struct %nanovg::path))

(cffi:defctype %nanovg::scissor (:struct %nanovg::scissor))

(eval-when (:load-toplevel :compile-toplevel :execute)
  (export '%nanovg::nstroke :%nanovg)
  (export '%nanovg::glyph-position :%nanovg)
  (export '%nanovg::render-fill :%nanovg)
  (export '%nanovg::texture :%nanovg)
  (export '%nanovg::align :%nanovg)
  (export '%nanovg::rgba-f :%nanovg)
  (export '%nanovg::line-cap :%nanovg)
  (export '%nanovg::rgb-f :%nanovg)
  (export '%nanovg::composite-operation :%nanovg)
  (export '%nanovg::font-face-id :%nanovg)
  (export '%nanovg::rounded-rect-varying :%nanovg)
  (export '%nanovg::miter-limit :%nanovg)
  (export '%nanovg::reset-transform :%nanovg)
  (export '%nanovg::stroke-color :%nanovg)
  (export '%nanovg::end-frame :%nanovg)
  (export '%nanovg::transform-premultiply :%nanovg)
  (export '%nanovg::skew-y :%nanovg)
  (export '%nanovg::delete-gl3 :%nanovg)
  (export '%nanovg::radius :%nanovg)
  (export '%nanovg::path-winding :%nanovg)
  (export '%nanovg::transform :%nanovg)
  (export '%nanovg::create-internal :%nanovg)
  (export '%nanovg::create-gl3 :%nanovg)
  (export '%nanovg::end :%nanovg)
  (export '%nanovg::winding :%nanovg)
  (export '%nanovg::box-gradient :%nanovg)
  (export '%nanovg::arc-to :%nanovg)
  (export '%nanovg::add-fallback-font :%nanovg)
  (export '%nanovg::skew-x :%nanovg)
  (export '%nanovg::str :%nanovg)
  (export '%nanovg::solidity :%nanovg)
  (export '%nanovg::line-join :%nanovg)
  (export '%nanovg::reset :%nanovg)
  (export '%nanovg::internal-params :%nanovg)
  (export '%nanovg::render-create :%nanovg)
  (export '%nanovg::dst-alpha :%nanovg)
  (export '%nanovg::rgba :%nanovg)
  (export '%nanovg::@0 :%nanovg)
  (export '%nanovg::update-image :%nanovg)
  (export '%nanovg::create-image-mem :%nanovg)
  (export '%nanovg::+khronos-false+ :%nanovg)
  (export '%nanovg::ellipse :%nanovg)
  (export '%nanovg::trans-rgba :%nanovg)
  (export '%nanovg::|C:@S@NV-GCOLOR@UA| :%nanovg)
  (export '%nanovg::font-face :%nanovg)
  (export '%nanovg::text-metrics :%nanovg)
  (export '%nanovg::nfill :%nanovg)
  (export '%nanovg::edge-anti-alias :%nanovg)
  (export '%nanovg::begin-frame :%nanovg)
  (export '%nanovg::path :%nanovg)
  (export '%nanovg::transform-inverse :%nanovg)
  (export '%nanovg::text-break-lines :%nanovg)
  (export '%nanovg::trans-rgb-af :%nanovg)
  (export '%nanovg::y :%nanovg)
  (export '%nanovg::shape-anti-alias :%nanovg)
  (export '%nanovg::create-font :%nanovg)
  (export '%nanovg::global-composite-blend-func :%nanovg)
  (export '%nanovg::maxx :%nanovg)
  (export '%nanovg::font-size :%nanovg)
  (export '%nanovg::fill-color :%nanovg)
  (export '%nanovg::stroke :%nanovg)
  (export '%nanovg::render-update-texture :%nanovg)
  (export '%nanovg::render-get-texture-size :%nanovg)
  (export '%nanovg::text-box-bounds :%nanovg)
  (export '%nanovg::render-cancel :%nanovg)
  (export '%nanovg::render-stroke :%nanovg)
  (export '%nanovg::next :%nanovg)
  (export '%nanovg::save :%nanovg)
  (export '%nanovg::text-line-height :%nanovg)
  (export '%nanovg::outer-color :%nanovg)
  (export '%nanovg::current-transform :%nanovg)
  (export '%nanovg::image-size :%nanovg)
  (export '%nanovg::transform-identity :%nanovg)
  (export '%nanovg::convex :%nanovg)
  (export '%nanovg::xform :%nanovg)
  (export '%nanovg::radial-gradient :%nanovg)
  (export '%nanovg::delete-internal :%nanovg)
  (export '%nanovg::create-image-rgba :%nanovg)
  (export '%nanovg::quad-to :%nanovg)
  (export '%nanovg::transform-point :%nanovg)
  (export '%nanovg::scale :%nanovg)
  (export '%nanovg::paint :%nanovg)
  (export '%nanovg::x :%nanovg)
  (export '%nanovg::text-align :%nanovg)
  (export '%nanovg::g :%nanovg)
  (export '%nanovg::text-glyph-positions :%nanovg)
  (export '%nanovg::transform-multiply :%nanovg)
  (export '%nanovg::add-fallback-font-id :%nanovg)
  (export '%nanovg::close-path :%nanovg)
  (export '%nanovg::debug-dump-path-cache :%nanovg)
  (export '%nanovg::transform-skew-y :%nanovg)
  (export '%nanovg::width :%nanovg)
  (export '%nanovg::render-triangles :%nanovg)
  (export '%nanovg::stroke-width :%nanovg)
  (export '%nanovg::intersect-scissor :%nanovg)
  (export '%nanovg::minx :%nanovg)
  (export '%nanovg::restore :%nanovg)
  (export '%nanovg::r :%nanovg)
  (export '%nanovg::a :%nanovg)
  (export '%nanovg::text :%nanovg)
  (export '%nanovg::translate :%nanovg)
  (export '%nanovg::inner-color :%nanovg)
  (export '%nanovg::image-pattern :%nanovg)
  (export '%nanovg::first :%nanovg)
  (export '%nanovg::cancel-frame :%nanovg)
  (export '%nanovg::find-font :%nanovg)
  (export '%nanovg::scissor :%nanovg)
  (export '%nanovg::move-to :%nanovg)
  (export '%nanovg::text-box :%nanovg)
  (export '%nanovg::circle :%nanovg)
  (export '%nanovg::text-bounds :%nanovg)
  (export '%nanovg::create-flags :%nanovg)
  (export '%nanovg::transform-translate :%nanovg)
  (export '%nanovg::arc :%nanovg)
  (export '%nanovg::image-handle-gl3 :%nanovg)
  (export '%nanovg::rounded-rect :%nanovg)
  (export '%nanovg::global-composite-operation :%nanovg)
  (export '%nanovg::deg-to-rad :%nanovg)
  (export '%nanovg::|C:@S@NV-GCOLOR@UA@SA| :%nanovg)
  (export '%nanovg::lerp-rgba :%nanovg)
  (export '%nanovg::line-to :%nanovg)
  (export '%nanovg::render-delete :%nanovg)
  (export '%nanovg::blend-factor :%nanovg)
  (export '%nanovg::rotate :%nanovg)
  (export '%nanovg::b :%nanovg)
  (export '%nanovg::rgb :%nanovg)
  (export '%nanovg::rect :%nanovg)
  (export '%nanovg::user-ptr :%nanovg)
  (export '%nanovg::linear-gradient :%nanovg)
  (export '%nanovg::begin-path :%nanovg)
  (export '%nanovg::delete-image :%nanovg)
  (export '%nanovg::src-alpha :%nanovg)
  (export '%nanovg::font-blur :%nanovg)
  (export '%nanovg::extent :%nanovg)
  (export '%nanovg::+khronos-true+ :%nanovg)
  (export '%nanovg::stroke-paint :%nanovg)
  (export '%nanovg::global-composite-blend-func-separate :%nanovg)
  (export '%nanovg::image-flags-gl :%nanovg)
  (export '%nanovg::color :%nanovg)
  (export '%nanovg::vertex :%nanovg)
  (export '%nanovg::transform-rotate :%nanovg)
  (export '%nanovg::image :%nanovg)
  (export '%nanovg::rad-to-deg :%nanovg)
  (export '%nanovg::u :%nanovg)
  (export '%nanovg::render-viewport :%nanovg)
  (export '%nanovg::fill :%nanovg)
  (export '%nanovg::create-image-from-handle-gl3 :%nanovg)
  (export '%nanovg::render-delete-texture :%nanovg)
  (export '%nanovg::create-image :%nanovg)
  (export '%nanovg::transform-skew-x :%nanovg)
  (export '%nanovg::image-flags :%nanovg)
  (export '%nanovg::text-row :%nanovg)
  (export '%nanovg::text-letter-spacing :%nanovg)
  (export '%nanovg::bezier-to :%nanovg)
  (export '%nanovg::start :%nanovg)
  (export '%nanovg::context :%nanovg)
  (export '%nanovg::render-create-texture :%nanovg)
  (export '%nanovg::feather :%nanovg)
  (export '%nanovg::nbevel :%nanovg)
  (export '%nanovg::g-luint :%nanovg)
  (export '%nanovg::composite-operation-state :%nanovg)
  (export '%nanovg::fill-paint :%nanovg)
  (export '%nanovg::render-flush :%nanovg)
  (export '%nanovg::transform-scale :%nanovg)
  (export '%nanovg::src-rgb :%nanovg)
  (export '%nanovg::reset-scissor :%nanovg)
  (export '%nanovg::global-alpha :%nanovg)
  (export '%nanovg::hsl :%nanovg)
  (export '%nanovg::+khronos-boolean-enum-force-size+ :%nanovg)
  (export '%nanovg::dst-rgb :%nanovg)
  (export '%nanovg::create-font-mem :%nanovg)
  (export '%nanovg::closed :%nanovg)
  (export '%nanovg::v :%nanovg)
  (export '%nanovg::hsla :%nanovg)
  (export '%nanovg::params :%nanovg)
  (export '%nanovg::count :%nanovg)
  (setf (getf (symbol-plist '%nanovg::@0)
              :cffi-c-ref-anonymous-field)
        t))

