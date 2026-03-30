#' Nudibranch colour palettes
#'
#' A named list of colour palettes inspired by nudibranchs
#' and sea slugs photographed in Australian waters.
#'
#' @export
nudibranch_palettes <- list(
  hydatina        = c("#5D2A33", "#A87B8A", "#8C6E90", "#5BAFD4", "#D4D8D5"),
  hypselodoris    = c("#93DEF8", "#31C2DF", "#F3D01C", "#991334", "#7D30A9"),
  doriprismatica  = c("#111111", "#6BAFCE", "#D1CFB4", "#E9F2EC"),
  bullina         = c("#54B8E8", "#6D96AB", "#89BCD7", "#CFD3D5", "#B02840"),
  elysia          = c("#111111", "#367003", "#8CCA0D", "#845E92", "#E9EDDD"),
  dolabrifera     = c("#2E2516", "#B1793B", "#D7B488", "#EBDDC3", "#96C12D"),
  carminodoris    = c("#59270B", "#AA5727", "#C58755", "#D4A782", "#E7E8E7"),
  dendrodoris     = c("#3A2C1D", "#947442", "#CCAB6D", "#E0D6BF", "#8996A6"),
  aplysia         = c("#302914", "#7E622C", "#B19128", "#C8AD72", "#E5E4CF"),
  haloa           = c("#111111", "#493410", "#897547", "#9F9DA2", "#CFD2D2"),
  ceratosoma      = c("#F1F2F1", "#D3B1C1", "#ECBF0B", "#9E054E"),
  jorunna         = c("#5F4022", "#5B5D68", "#828790", "#B9BAB9", "#EAEFEF")
)

#' Get a nudibranch colour palette
#'
#' @param name Name of the palette (e.g. "hypselodoris"). If NULL, prints
#'   all available palette names.
#' @param n Number of colours to return. If NULL, returns all colours.
#' @param type Either "discrete" or "continuous".
#' @return A character vector of hex colour codes.
#' @export
#' @examples
#' nudibranch_palette("hypselodoris")
#' nudibranch_palette("elysia", n = 3)
nudibranch_palette <- function(name = NULL, n = NULL, type = c("discrete", "continuous")) {
  if (is.null(name)) {
    message("Available palettes:\n", paste(" -", names(nudibranch_palettes), collapse = "\n"))
    return(invisible(nudibranch_palettes))
  }
  type <- match.arg(type)
  if (!name %in% names(nudibranch_palettes)) {
    stop("Palette '", name, "' not found. Run nudibranch_palette() to see options.")
  }
  pal <- nudibranch_palettes[[name]]
  if (is.null(n)) n <- length(pal)
  if (type == "continuous") {
    pal <- grDevices::colorRampPalette(pal)(n)
  } else {
    if (n > length(pal)) stop("Not enough colours in palette '", name, "'. Max: ", length(pal))
    pal <- pal[1:n]
  }
  structure(pal, class = "nudibranch_palette", name = name)
}

#' Print a nudibranch palette
#'
#' @param x A nudibranch_palette object
#' @param ... Additional arguments (ignored)
#' @export
print.nudibranch_palette <- function(x, ...) {
  cat("Nudibranch palette:", attr(x, "name"), "\n")
  print(unclass(x))
  invisible(x)
}
