#' Create a new graphics window on the screen
#'
#' @useDynLib gfxR, .registration = TRUE
#' @export
#' @param width Integer. Width of the window in pixels.
#' @param height Integer. Height of the window in pixels.
#' @param title String. Name of the window in the title bar.
gfx_open <- function(width, height, title = "gfxR") {
        stopifnot(is.numeric(width), is.numeric(height), is.character(title))
        .Call(R_gfx_open, as.integer(width), as.integer(height), title)
        invisible()
}

#' Draw a single point at (x, y)
#'
#' @useDynLib gfxR, .registration = TRUE
#' @export
#' @param x Integer. Position X on the window.
#' @param y Integer. Position Y on the window.
gfx_point <- function(x, y) {
        stopifnot(is.numeric(x), is.numeric(y))
        .Call(R_gfx_point, as.integer(x), as.integer(y))
        invisible()
}

#' Draw a line in the graphics window using the current color
#'
#' @useDynLib gfxR, .registration = TRUE
#' @export
#' @param x1 Integer. From this X position.
#' @param y1 Integer. From this Y position.
#' @param x2 Integer. To this X position.
#' @param y2 Integer. To this Y position.
gfx_line <- function(x1, y1, x2, y2) {
        stopifnot(is.numeric(x1), is.numeric(y1), is.numeric(x2),
                  is.numeric(y2))
        .Call(R_gfx_line, as.integer(x1), as.integer(y1), as.integer(x2),
              as.integer(y2))
        invisible()
}

#' Sets the current color for drawing
#'
#' The drawing color is set using the RGB color model, in which you mix red,
#' green, and blue components in order to get the desired color.
#' @useDynLib gfxR, .registration = TRUE
#' @export
#' @param red Integer. A value between 0 and 255.
#' @param green Integer. A value between 0 and 255.
#' @param blue Integer. A value between 0 and 255.
gfx_color <- function(red, green, blue) {
        stopifnot(is.numeric(red), is.numeric(green), is.numeric(blue))
        .Call(R_gfx_color, as.integer(red), as.integer(green), as.integer(blue))
        invisible()
}

#' Clear the window to the current background color
#'
#' Default background color is black.
#' @useDynLib gfxR, .registration = TRUE
#' @export
gfx_clear <- function() {
        .Call(R_gfx_clear)
        invisible()
}

#' Change the background color after clearing
#'
#' Changes the background color using the same format as [gfx_clear()].
#' The new background color takes effect the next time [gfx_clear()] is called.
#' @useDynLib gfxR, .registration = TRUE
#' @export
#' @param red Integer. A value between 0 and 255.
#' @param green Integer. A value between 0 and 255.
#' @param blue Integer. A value between 0 and 255.
gfx_clear_color <- function(red, green, blue) {
        stopifnot(is.numeric(red), is.numeric(green), is.numeric(blue))
        .Call(R_gfx_clear_color, as.integer(red), as.integer(green),
              as.integer(blue))
        invisible()
}

#' Wait until the user press a key or a mouse button
#'
#' If the user has pressed a mouse button, the integer 1, 2, or 3, will be
#' returned, indicating the button pressed. If the user has pressed a key,
#' that character will be returned. To determine the mouse location at that
#' time, call [gfx_xpos() and [gfx_ypos()]].
#' @useDynLib gfxR, .registration = TRUE
#' @export
#' @return Either an integer with the mouse button number pressed,
#' or the keyboard character pressed.
gfx_wait <- function() {
        .Call(R_gfx_wait)
}

#' Return the pressed X coordinate
#'
#' `gfx_xpos()` and [gfx_ypos()] return the X and Y coordinates, respectively,
#' of the mouse pointer when the last key or button was pressed.
#' @useDynLib gfxR, .registration = TRUE
#' @export
#' @return Integer with the X coordinate
gfx_xpos <- function() {
        .Call(R_gfx_xpos)
}

#' Return the pressed Y coordinate
#'
#' [gfx_xpos()] and `gfx_ypos()` return the X and Y coordinates, respectively,
#' of the mouse pointer when the last key or button was pressed.
#' @useDynLib gfxR, .registration = TRUE
#' @export
#' @return Integer with the Y coordinate
gfx_ypos <- function() {
        .Call(R_gfx_ypos)
}

#' Check if an event has occurred without blocking
#'
#' [gfx_wait()] causes the program to wait until something is pressed, which
#' can be inconvenient in a real-time program. To avoid this, call this
#' function, which returns `TRUE` if an event (key or button press) has
#' occurred, otherwise returns `FALSE` immediately. If it returns `TRUE`,
#' then you can call [gfx_wait()] to retrieve the event without waiting.
#' @useDynLib gfxR, .registration = TRUE
#' @export
#' @return Logical. TRUE if an event occurred. FALSE otherwise.
gfx_event_waiting <- function() {
        .Call(R_gfx_event_waiting)
}

#' Flush all output to the graphics window
#'
#' This forces all previous drawing commands to take effect. Output is normally
#' flushed after a call to [gfx_wait()]. If your program does not call
#' [gfx_wait()], then you need to call `gfx_flush` after drawing to the screen.
#' @useDynLib gfxR, .registration = TRUE
#' @export
gfx_flush <- function() {
        .Call(R_gfx_flush)
        invisible()
}
