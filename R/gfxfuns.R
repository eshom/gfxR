#' @useDynLib gfxR, .registration = TRUE
#' @export
gfx_open <- function(width, height, title = "gfxR") {
        stopifnot(is.numeric(width), is.numeric(height), is.character(title))
        .Call(R_gfx_open, as.integer(width), as.integer(height), title)
        invisible()
}

#' @useDynLib gfxR, .registration = TRUE
#' @export
gfx_point <- function(x, y) {
        stopifnot(is.numeric(x), is.numeric(y))
        .Call(R_gfx_point, as.integer(x), as.integer(y))
        invisible()
}

#' @useDynLib gfxR, .registration = TRUE
#' @export
gfx_line <- function(x1, y1, x2, y2) {
        stopifnot(is.numeric(x1), is.numeric(y1), is.numeric(x2), is.numeric(y2))
        .Call(R_gfx_line, as.integer(x1), as.integer(y1), as.integer(x2), as.integer(y2))
        invisible()
}

#' @useDynLib gfxR, .registration = TRUE
#' @export
gfx_color <- function(red, green, blue) {
        stopifnot(is.numeric(red), is.numeric(green), is.numeric(blue))
        .Call(R_gfx_color, as.integer(red), as.integer(green), as.integer(blue))
        invisible()
}

#' @useDynLib gfxR, .registration = TRUE
#' @export
gfx_clear <- function() {
        .Call(R_gfx_clear)
        invisible()
}

#' @useDynLib gfxR, .registration = TRUE
#' @export
gfx_clear_color <- function(red, green, blue) {
        stopifnot(is.numeric(red), is.numeric(green), is.numeric(blue))
        .Call(R_gfx_clear_color, as.integer(red), as.integer(green), as.integer(blue))
        invisible()
}

#' @useDynLib gfxR, .registration = TRUE
#' @export
gfx_wait <- function() {
        .Call(R_gfx_wait)
}

#' @useDynLib gfxR, .registration = TRUE
#' @export
gfx_xpos <- function() {
        .Call(R_gfx_xpos)
}

#' @useDynLib gfxR, .registration = TRUE
#' @export
gfx_ypos <- function() {
        .Call(R_gfx_ypos)
}

#' @useDynLib gfxR, .registration = TRUE
#' @export
gfx_event_waiting <- function() {
        .Call(R_gfx_event_waiting)
}

#' @useDynLib gfxR, .registration = TRUE
#' @export
gfx_flush <- function() {
        .Call(R_gfx_flush)
        invisible()
}
