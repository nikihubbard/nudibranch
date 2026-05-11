
#' ggplot2 colour scale using a nudibranch palette
#'
#' @param name Name of the palette (e.g. "hypselodoris")
#' @param n Number of colours. If NULL, returns all colours in the palette.
#' @param type Either "discrete" or "continuous"
#' @param ... Additional arguments passed to ggplot2
#' @return A ggplot2 scale object that can be added to a ggplot. Specifically
#'   a \code{ScaleDiscrete} object created by
#'   \code{\link[ggplot2]{scale_colour_manual}}
#' @export
scale_colour_nudibranch <- function(name, n = NULL, type = "discrete", ...) {
  ggplot2::scale_colour_manual(values = nudibranch_palette(name, n, type), ...)
}

#' ggplot2 fill scale using a nudibranch palette
#'
#' @param name Name of the palette (e.g. "hypselodoris")
#' @param n Number of colours. If NULL, returns all colours in the palette.
#' @param type Either "discrete" or "continuous"
#' @param ... Additional arguments passed to ggplot2
#' @return A ggplot2 scale object that can be added to a ggplot. Specifically
#'   a \code{ScaleDiscrete} object created by
#'   \code{\link[ggplot2]{scale_fill_manual}}
#' @export
scale_fill_nudibranch <- function(name, n = NULL, type = "discrete", ...) {
  ggplot2::scale_fill_manual(values = nudibranch_palette(name, n, type), ...)
}
