#include "bodge_nanovg.h"
#ifndef __CLAW_API
#  if defined(_WIN32)
#    define __CLAW_API __declspec(dllexport)
#  elif defined(__GNUC__)
#    define __CLAW_API __attribute__((visibility("default")))
#  else
#    define __CLAW_API
#  endif
#endif
#if defined(__cplusplus)
extern "C" {
#endif

__CLAW_API void __claw_nvgBoxGradient(NVGpaint* arg9, NVGcontext* arg0, float arg1, float arg2, float arg3, float arg4, float arg5, float arg6, NVGcolor* arg7, NVGcolor* arg8) {
  NVGpaint result = nvgBoxGradient(arg0, arg1, arg2, arg3, arg4, arg5, arg6, (*arg7), (*arg8));
  (*arg9) = result;
}

__CLAW_API void __claw_nvgFillColor(NVGcontext* arg0, NVGcolor* arg1) {
  nvgFillColor(arg0, (*arg1));
}

__CLAW_API void __claw_nvgFillPaint(NVGcontext* arg0, NVGpaint* arg1) {
  nvgFillPaint(arg0, (*arg1));
}

__CLAW_API void __claw_nvgHSL(NVGcolor* arg3, float arg0, float arg1, float arg2) {
  NVGcolor result = nvgHSL(arg0, arg1, arg2);
  (*arg3) = result;
}

__CLAW_API void __claw_nvgHSLA(NVGcolor* arg4, float arg0, float arg1, float arg2, unsigned char arg3) {
  NVGcolor result = nvgHSLA(arg0, arg1, arg2, arg3);
  (*arg4) = result;
}

__CLAW_API void __claw_nvgImagePattern(NVGpaint* arg8, NVGcontext* arg0, float arg1, float arg2, float arg3, float arg4, float arg5, int arg6, float arg7) {
  NVGpaint result = nvgImagePattern(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
  (*arg8) = result;
}

__CLAW_API void __claw_nvgLerpRGBA(NVGcolor* arg3, NVGcolor* arg0, NVGcolor* arg1, float arg2) {
  NVGcolor result = nvgLerpRGBA((*arg0), (*arg1), arg2);
  (*arg3) = result;
}

__CLAW_API void __claw_nvgLinearGradient(NVGpaint* arg7, NVGcontext* arg0, float arg1, float arg2, float arg3, float arg4, NVGcolor* arg5, NVGcolor* arg6) {
  NVGpaint result = nvgLinearGradient(arg0, arg1, arg2, arg3, arg4, (*arg5), (*arg6));
  (*arg7) = result;
}

__CLAW_API void __claw_nvgRGB(NVGcolor* arg3, unsigned char arg0, unsigned char arg1, unsigned char arg2) {
  NVGcolor result = nvgRGB(arg0, arg1, arg2);
  (*arg3) = result;
}

__CLAW_API void __claw_nvgRGBA(NVGcolor* arg4, unsigned char arg0, unsigned char arg1, unsigned char arg2, unsigned char arg3) {
  NVGcolor result = nvgRGBA(arg0, arg1, arg2, arg3);
  (*arg4) = result;
}

__CLAW_API void __claw_nvgRGBAf(NVGcolor* arg4, float arg0, float arg1, float arg2, float arg3) {
  NVGcolor result = nvgRGBAf(arg0, arg1, arg2, arg3);
  (*arg4) = result;
}

__CLAW_API void __claw_nvgRGBf(NVGcolor* arg3, float arg0, float arg1, float arg2) {
  NVGcolor result = nvgRGBf(arg0, arg1, arg2);
  (*arg3) = result;
}

__CLAW_API void __claw_nvgRadialGradient(NVGpaint* arg7, NVGcontext* arg0, float arg1, float arg2, float arg3, float arg4, NVGcolor* arg5, NVGcolor* arg6) {
  NVGpaint result = nvgRadialGradient(arg0, arg1, arg2, arg3, arg4, (*arg5), (*arg6));
  (*arg7) = result;
}

__CLAW_API void __claw_nvgStrokeColor(NVGcontext* arg0, NVGcolor* arg1) {
  nvgStrokeColor(arg0, (*arg1));
}

__CLAW_API void __claw_nvgStrokePaint(NVGcontext* arg0, NVGpaint* arg1) {
  nvgStrokePaint(arg0, (*arg1));
}

__CLAW_API void __claw_nvgTransRGBA(NVGcolor* arg2, NVGcolor* arg0, unsigned char arg1) {
  NVGcolor result = nvgTransRGBA((*arg0), arg1);
  (*arg2) = result;
}

__CLAW_API void __claw_nvgTransRGBAf(NVGcolor* arg2, NVGcolor* arg0, float arg1) {
  NVGcolor result = nvgTransRGBAf((*arg0), arg1);
  (*arg2) = result;
}
#if defined(__cplusplus)
}
#endif
