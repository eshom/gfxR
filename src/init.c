#include "gfxR.h"
#include <R_ext/Rdynload.h>

static const R_CallMethodDef callMethods[] = {
        {"R_gfx_open", (DL_FUNC) &R_gfx_open, 3},
        {NULL, NULL, 0}
};

void R_init_gfxR(DllInfo *info)
{
        R_registerRoutines(info, NULL, callMethods, NULL, NULL);
        R_useDynamicSymbols(info, FALSE);
}
