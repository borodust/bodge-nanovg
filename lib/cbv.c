#include "bodge_nanovg.h"
#ifndef __CLAW_API
  #ifdef __cplusplus
    #define __CLAW_API extern "C"
  #else
    #define __CLAW_API
  #endif
#endif

__CLAW_API void __claw_nvgHSL(struct NVGcolor* arg3, float arg0, float arg1, float arg2) {
  struct NVGcolor result = nvgHSL(arg0, arg1, arg2);
  (*arg3) = result;
}

__CLAW_API void __claw_nvgHSLA(struct NVGcolor* arg4, float arg0, float arg1, float arg2, unsigned char arg3) {
  struct NVGcolor result = nvgHSLA(arg0, arg1, arg2, arg3);
  (*arg4) = result;
}

__CLAW_API void __claw_nvgLerpRGBA(struct NVGcolor* arg3, struct NVGcolor* arg0, struct NVGcolor* arg1, float arg2) {
  struct NVGcolor result = nvgLerpRGBA((*arg0), (*arg1), arg2);
  (*arg3) = result;
}

__CLAW_API void __claw_nvgTransRGBAf(struct NVGcolor* arg2, struct NVGcolor* arg0, float arg1) {
  struct NVGcolor result = nvgTransRGBAf((*arg0), arg1);
  (*arg2) = result;
}

__CLAW_API void __claw_nvgRGBAf(struct NVGcolor* arg4, float arg0, float arg1, float arg2, float arg3) {
  struct NVGcolor result = nvgRGBAf(arg0, arg1, arg2, arg3);
  (*arg4) = result;
}

__CLAW_API void __claw_nvgRGBf(struct NVGcolor* arg3, float arg0, float arg1, float arg2) {
  struct NVGcolor result = nvgRGBf(arg0, arg1, arg2);
  (*arg3) = result;
}

__CLAW_API void __claw_nvgStrokeColor(NVGcontext* arg0, struct NVGcolor* arg1) {
  nvgStrokeColor(arg0, (*arg1));
}

__CLAW_API void __claw_nvgBoxGradient(struct NVGpaint* arg9, NVGcontext* arg0, float arg1, float arg2, float arg3, float arg4, float arg5, float arg6, struct NVGcolor* arg7, struct NVGcolor* arg8) {
  struct NVGpaint result = nvgBoxGradient(arg0, arg1, arg2, arg3, arg4, arg5, arg6, (*arg7), (*arg8));
  (*arg9) = result;
}

__CLAW_API void __claw_nvgRGB(struct NVGcolor* arg3, unsigned char arg0, unsigned char arg1, unsigned char arg2) {
  struct NVGcolor result = nvgRGB(arg0, arg1, arg2);
  (*arg3) = result;
}

__CLAW_API void __claw_nvgImagePattern(struct NVGpaint* arg8, NVGcontext* arg0, float arg1, float arg2, float arg3, float arg4, float arg5, int arg6, float arg7) {
  struct NVGpaint result = nvgImagePattern(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
  (*arg8) = result;
}

__CLAW_API void __claw_nvgLinearGradient(struct NVGpaint* arg7, NVGcontext* arg0, float arg1, float arg2, float arg3, float arg4, struct NVGcolor* arg5, struct NVGcolor* arg6) {
  struct NVGpaint result = nvgLinearGradient(arg0, arg1, arg2, arg3, arg4, (*arg5), (*arg6));
  (*arg7) = result;
}

__CLAW_API void __claw_nvgFillPaint(NVGcontext* arg0, struct NVGpaint* arg1) {
  nvgFillPaint(arg0, (*arg1));
}

__CLAW_API void __claw_nvgStrokePaint(NVGcontext* arg0, struct NVGpaint* arg1) {
  nvgStrokePaint(arg0, (*arg1));
}

__CLAW_API void __claw_nvgFillColor(NVGcontext* arg0, struct NVGcolor* arg1) {
  nvgFillColor(arg0, (*arg1));
}

__CLAW_API void __claw_nvgRGBA(struct NVGcolor* arg4, unsigned char arg0, unsigned char arg1, unsigned char arg2, unsigned char arg3) {
  struct NVGcolor result = nvgRGBA(arg0, arg1, arg2, arg3);
  (*arg4) = result;
}

__CLAW_API void __claw_nvgRadialGradient(struct NVGpaint* arg7, NVGcontext* arg0, float arg1, float arg2, float arg3, float arg4, struct NVGcolor* arg5, struct NVGcolor* arg6) {
  struct NVGpaint result = nvgRadialGradient(arg0, arg1, arg2, arg3, arg4, (*arg5), (*arg6));
  (*arg7) = result;
}

__CLAW_API void __claw_nvgTransRGBA(struct NVGcolor* arg2, struct NVGcolor* arg0, unsigned char arg1) {
  struct NVGcolor result = nvgTransRGBA((*arg0), arg1);
  (*arg2) = result;
}