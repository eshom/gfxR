#include "gfx.h"
#include <R.h>
#include <Rinternals.h>

// gfx_open creates a new graphics window on the screen.
// width is the width of the window in pixels.
// height is the height of the window in pixels.
// title is the name of the window in the title bar.
SEXP R_gfx_open(SEXP width, SEXP height, SEXP title)
{
        gfx_open(asInteger(width), asInteger(height), CHAR(asChar(title)));
        return R_NilValue;
}

// gfx_line draws a line in the graphics window,
// using the current color, from location x1,y1 to x2,y2
SEXP R_gfx_line(SEXP x1, SEXP y1, SEXP x2, SEXP y2)
{
        gfx_line(asInteger(x1), asInteger(y1), asInteger(x2), asInteger(y2));
        return R_NilValue;
}

// gfx_color sets the current color for drawing,
// using the RGB color model, in which you mix red, green,
// and blue components in order to get the desired color.
// gfx_color takes three integers between 0 and 255,
// each representing red, green, and blue.
SEXP R_gfx_color(SEXP red, SEXP green, SEXP blue)
{
        gfx_color(asInteger(red), asInteger(green), asInteger(blue));
        return R_NilValue;
}

// gfx_clear clears the window to the current background color,
// which is black by default.
SEXP R_gfx_clear(void)
{
        gfx_clear();
        return R_NilValue;
}

// gfx_clear_color changes the background color, using the same format as
// gfx_clear above. The new background color takes effect the next time
// gfx_clear is called.
SEXP R_gfx_clear_color(SEXP red, SEXP green, SEXP blue)
{
        gfx_clear_color(asInteger(red), asInteger(green), asInteger(blue));
        return R_NilValue;
}

// gfx_wait waits until the user presses a key or mouse button.
// If the user has pressed a mouse button, the integer 1, 2, or 3 will be
// returned, indicating the button pressed. If the user has pressed a key,
// that character will be returned. To determine the mouse location at that
// time, call gfx_xpos and gfx_ypos.
SEXP R_gfx_wait(void)
{
        char out_char = gfx_wait();
        const char out[2] = {out_char, '\0'};
        return mkString(out);
}

// gfx_xpos() and gfx_ypos return the X and Y coordinates, respectively,
// of the mouse pointer when the last key or button was pressed.
SEXP R_gfx_xpos(void)
{
        return ScalarInteger(gfx_xpos());
}

SEXP R_gfx_ypos(void)
{
        return ScalarInteger(gfx_ypos());
}

// gfx_wait causes the program to wait until something is pressed, which can be
// inconvenient in a real-time program. To avoid this, call gfx_event_waiting,
// which returns true if an event (key or button press) has occurred, otherwise
// returns false immediately. If it returns true, then you can call gfx_wait to
// retrieve the event without waiting.
SEXP R_gfx_event_waiting()
{
        return ScalarInteger(gfx_event_waiting());
}

// gfx_flush flushes all output to the graphics window. This forces all
// previous drawing commands to take effect. Output is normally flushed after a
// called to gfx_wait. If your program does not call gfx_wait then you need to
// call gfx_flush after drawing to the screen.
SEXP R_gfx_flush(void)
{
        gfx_flush();
        return R_NilValue;
}
