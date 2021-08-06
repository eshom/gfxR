#include "gfxR.h"
#include <R_ext/Rdynload.h>

static const R_CallMethodDef callMethods[] = {
        {"R_gfx_open"          , (DL_FUNC) &R_gfx_open          , 3},
        {"R_gfx_point"         , (DL_FUNC) &R_gfx_point         , 2},
        {"R_gfx_line"          , (DL_FUNC) &R_gfx_line          , 4},
        {"R_gfx_color"         , (DL_FUNC) &R_gfx_color         , 3},
        {"R_gfx_clear"         , (DL_FUNC) &R_gfx_clear         , 0},
        {"R_gfx_clear_color"   , (DL_FUNC) &R_gfx_clear_color   , 3},
        {"R_gfx_wait"          , (DL_FUNC) &R_gfx_wait          , 0},
        {"R_gfx_xpos"          , (DL_FUNC) &R_gfx_xpos          , 0},
        {"R_gfx_ypos"          , (DL_FUNC) &R_gfx_ypos          , 0},
        {"R_gfx_event_waiting" , (DL_FUNC) &R_gfx_event_waiting , 0},
        {"R_gfx_flush"         , (DL_FUNC) &R_gfx_flush         , 0},
        {NULL                  , NULL                           , 0}
};

void R_init_gfxR(DllInfo *info)
{
        R_registerRoutines(info, NULL, callMethods, NULL, NULL);
        R_useDynamicSymbols(info, FALSE);
}
