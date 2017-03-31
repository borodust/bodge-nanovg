#define NANOVG_GL3_IMPLEMENTATION
#include "bodge_nanovg.h"


void bge_fill_color(NVGcontext* ctx, float r, float g, float b, float a) {
  nvgFillColor(ctx, nvgRGBAf(r, g, b, a));
}


void bge_stroke_color(NVGcontext* ctx, float r, float g, float b, float a) {
  nvgStrokeColor(ctx, nvgRGBAf(r, g, b, a));
}


void bge_fill_paint(NVGcontext* ctx, NVGpaint* paint) {
  nvgFillPaint(ctx, (*paint));
}


void bge_stroke_paint(NVGcontext* ctx, NVGpaint* paint) {
  nvgStrokePaint(ctx, (*paint));
}


NVGpaint* bge_init_image_pattern(NVGpaint* paint, NVGcontext* ctx,
                                 float ox, float oy, float ex, float ey,
                                 float angle, int image, float alpha) {
  (*paint) = nvgImagePattern(ctx, ox, oy, ex, ey, angle, image, alpha);
  return paint;
}
