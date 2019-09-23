/* Generated by :claw at 2019-09-26T06:03:34.958274Z */

#include "bodge_nanovg_gl2.h"

#if !defined(__CLAW_API)
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


__CLAW_API NVGpaint* __claw_nvgImagePattern(NVGpaint* arg0, NVGcontext* arg1, float arg2, float arg3, float arg4, float arg5, float arg6, int arg7, float arg8) {
  NVGpaint result = nvgImagePattern(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
 (*arg0) = result;
  return arg0;
}

__CLAW_API NVGpaint* __claw_nvgRadialGradient(NVGpaint* arg0, NVGcontext* arg1, float arg2, float arg3, float arg4, float arg5, NVGcolor* arg6, NVGcolor* arg7) {
  NVGpaint result = nvgRadialGradient(arg1, arg2, arg3, arg4, arg5, (*arg6), (*arg7));
 (*arg0) = result;
  return arg0;
}

__CLAW_API NVGpaint* __claw_nvgBoxGradient(NVGpaint* arg0, NVGcontext* arg1, float arg2, float arg3, float arg4, float arg5, float arg6, float arg7, NVGcolor* arg8, NVGcolor* arg9) {
  NVGpaint result = nvgBoxGradient(arg1, arg2, arg3, arg4, arg5, arg6, arg7, (*arg8), (*arg9));
 (*arg0) = result;
  return arg0;
}

__CLAW_API NVGpaint* __claw_nvgLinearGradient(NVGpaint* arg0, NVGcontext* arg1, float arg2, float arg3, float arg4, float arg5, NVGcolor* arg6, NVGcolor* arg7) {
  NVGpaint result = nvgLinearGradient(arg1, arg2, arg3, arg4, arg5, (*arg6), (*arg7));
 (*arg0) = result;
  return arg0;
}

__CLAW_API void __claw_nvgFillPaint(NVGcontext* arg0, NVGpaint* arg1) {
  nvgFillPaint(arg0, (*arg1));
}

__CLAW_API void __claw_nvgFillColor(NVGcontext* arg0, NVGcolor* arg1) {
  nvgFillColor(arg0, (*arg1));
}

__CLAW_API void __claw_nvgStrokePaint(NVGcontext* arg0, NVGpaint* arg1) {
  nvgStrokePaint(arg0, (*arg1));
}

__CLAW_API void __claw_nvgStrokeColor(NVGcontext* arg0, NVGcolor* arg1) {
  nvgStrokeColor(arg0, (*arg1));
}

__CLAW_API NVGcolor* __claw_nvgHSLA(NVGcolor* arg0, float arg1, float arg2, float arg3, unsigned char arg4) {
  NVGcolor result = nvgHSLA(arg1, arg2, arg3, arg4);
 (*arg0) = result;
  return arg0;
}

__CLAW_API NVGcolor* __claw_nvgHSL(NVGcolor* arg0, float arg1, float arg2, float arg3) {
  NVGcolor result = nvgHSL(arg1, arg2, arg3);
 (*arg0) = result;
  return arg0;
}

__CLAW_API NVGcolor* __claw_nvgTransRGBAf(NVGcolor* arg0, NVGcolor* arg1, float arg2) {
  NVGcolor result = nvgTransRGBAf((*arg1), arg2);
 (*arg0) = result;
  return arg0;
}

__CLAW_API NVGcolor* __claw_nvgTransRGBA(NVGcolor* arg0, NVGcolor* arg1, unsigned char arg2) {
  NVGcolor result = nvgTransRGBA((*arg1), arg2);
 (*arg0) = result;
  return arg0;
}

__CLAW_API NVGcolor* __claw_nvgLerpRGBA(NVGcolor* arg0, NVGcolor* arg1, NVGcolor* arg2, float arg3) {
  NVGcolor result = nvgLerpRGBA((*arg1), (*arg2), arg3);
 (*arg0) = result;
  return arg0;
}

__CLAW_API NVGcolor* __claw_nvgRGBAf(NVGcolor* arg0, float arg1, float arg2, float arg3, float arg4) {
  NVGcolor result = nvgRGBAf(arg1, arg2, arg3, arg4);
 (*arg0) = result;
  return arg0;
}

__CLAW_API NVGcolor* __claw_nvgRGBA(NVGcolor* arg0, unsigned char arg1, unsigned char arg2, unsigned char arg3, unsigned char arg4) {
  NVGcolor result = nvgRGBA(arg1, arg2, arg3, arg4);
 (*arg0) = result;
  return arg0;
}

__CLAW_API NVGcolor* __claw_nvgRGBf(NVGcolor* arg0, float arg1, float arg2, float arg3) {
  NVGcolor result = nvgRGBf(arg1, arg2, arg3);
 (*arg0) = result;
  return arg0;
}

__CLAW_API NVGcolor* __claw_nvgRGB(NVGcolor* arg0, unsigned char arg1, unsigned char arg2, unsigned char arg3) {
  NVGcolor result = nvgRGB(arg1, arg2, arg3);
 (*arg0) = result;
  return arg0;
}

#if defined(__cplusplus)
}
#endif
