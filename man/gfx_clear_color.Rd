% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gfxfuns.R
\name{gfx_clear_color}
\alias{gfx_clear_color}
\title{Change the background color after clearing}
\usage{
gfx_clear_color(red, green, blue)
}
\arguments{
\item{red}{Integer. A value between 0 and 255.}

\item{green}{Integer. A value between 0 and 255.}

\item{blue}{Integer. A value between 0 and 255.}
}
\description{
Changes the background color using the same format as \code{\link[=gfx_clear]{gfx_clear()}}.
The new background color takes effect the next time \code{\link[=gfx_clear]{gfx_clear()}} is called.
}
