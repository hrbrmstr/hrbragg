#' Adaptive colors colors for {hrbragg} themes
#'
#' Explicit foreground/background theme color functions are provided
#' along with the primary adaptive color switcher function.
#'
#' @param mode `dark`, `light`, or `rstudio` to base it on RStudio's active theme
#' @param light,dark light and dark colors to auto-select from
#' @param dark dark color to use
#' @return length 1 character vector that represents a valid color
#' @export
#' @examples
#' theme_background_color()
adaptive_color <- function(mode = c("light", "dark", "rstudio"), light, dark) {

  mode <- match.arg(mode[1], c("dark", "light", "rstudio"))

  if (mode == "rstudio") mode <- if (rstudioapi::getThemeInfo()[["dark"]]) "dark" else "light"

  c("light" = light, "dark" = dark)[mode]

}


#' @rdname adaptive_color
#' @export
theme_background_color <- function(mode = c("light", "dark", "rstudio"),
                                 light = "white", dark = "#121212") {
  adaptive_color(mode, light, dark)
}

#' @rdname adaptive_color
#' @export
theme_foreground_color <- function(mode = c("light", "dark", "rstudio"),
                                 light = "#262626", dark = "#e1e1e1") {
  adaptive_color(mode, light, dark)
}
