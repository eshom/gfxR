#ifndef GFXR_H
#define GFXR_H

#include <R.h>
#include <Rinternals.h>

SEXP R_gfx_open(SEXP width, SEXP height, SEXP title);
SEXP R_gfx_line(SEXP x1, SEXP y1, SEXP x2, SEXP y2);
SEXP R_gfx_color(SEXP red, SEXP green, SEXP blue);
SEXP R_gfx_clear(void);
SEXP R_gfx_clear_color(SEXP red, SEXP green, SEXP blue);
SEXP R_gfx_wait(void);
SEXP R_gfx_xpos(void);
SEXP R_gfx_ypos(void);
SEXP R_gfx_event_waiting();
SEXP R_gfx_flush(void);

#endif
