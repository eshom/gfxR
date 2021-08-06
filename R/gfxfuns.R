#' @useDynLib gfxR, .registration = TRUE
#' @export
gfx_open <- function(width, height, title = "gfxR") {
        stopifnot(is.numeric(width), is.numeric(height), is.character(title))
        .Call(R_gfx_open, as.integer(width), as.integer(height), title)
}
