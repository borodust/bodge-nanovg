#ifndef BODGE_NANOVG_H_
#define BODGE_NANOVG_H_

#include <glad/glad.h>

#include "nanovg.h"
#define NANOVG_GL3 1
#include "nanovg_gl.h"


#ifdef _WIN32
#define BGE_API extern
#else
#define BGE_API
#endif


BGE_API void bge_fill_color(NVGcontext* ctx, float r, float g, float b, float a);

BGE_API void bge_stroke_color(NVGcontext* ctx, float r, float g, float b, float a);

BGE_API void bge_fill_paint(NVGcontext* ctx, NVGpaint* paint);

BGE_API void bge_stroke_paint(NVGcontext* ctx, NVGpaint* paint);

BGE_API NVGpaint* bge_init_image_pattern(NVGpaint* paint, NVGcontext* ctx,
                                         float ox, float oy, float ex, float ey,
                                         float angle, int image, float alpha);
#endif // BODGE_NANOVG_H_
