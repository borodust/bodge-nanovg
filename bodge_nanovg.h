#ifndef BODGE_NANOVG_H_
#define BODGE_NANOVG_H_

#include <glad/glad.h>

#include "nanovg.h"

#ifdef BODGE_GL2
#  define GL_LUMINANCE 0x1909
#  define GL_GENERATE_MIPMAP 0x8191
#  define NANOVG_GL2 1
#else
#  define NANOVG_GL3 1
#endif

#include "nanovg_gl.h"

#endif /* BODGE_NANOVG_H_ */
