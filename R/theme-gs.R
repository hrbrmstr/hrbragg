#' ggplot2 Theme Based On The Goldman Sans Font Family
#'
#' Uses the built-in [gs_pkg] custom font.
#'
#' - `background_colour` dark mode is "`#121212`" else "`white`"
#' - `foreground_colour` dark mode is "`#e1e1e1`" else "`#262626`"
#' - `grid_col` dark mode is "`#606367`" else "`#cccccc`"
#' - `axis_col` dark mode is "`#606367`" else "`#2b2b2b`"
#'
#' @note this function updates `Geom` defaults; use [reset_ggplot2_defaults()] to
#'       restore ggplot2 geom default aeshetics
#' @param base_size base font size
#' @param line_height default line height
#' @param plot_title_size plot title size
#' @param plot_title_position plot title position
#' @param plot_title_margin plot title margin
#' @param subtitle_size subtitle size
#' @param subtitle_margin subtitle margin
#' @param strip_text_size strip text size
#' @param strip_placement strip placement
#' @param caption_size caption size
#' @param caption_margin caption margin
#' @param axis_text_size axis text size
#' @param axis_title_size axis title size
#' @param axis_title_just axis title just
#' @param text_geom_size text geom size
#' @param panel_spacing panel spacing
#' @param plot_margin plot margin
#' @param grid_col grid col
#' @param grid grid
#' @param axis_col axis col
#' @param axis axis
#' @param ticks ticks
#' @return ggplot2 theme
#' @export
#' @examples
#' ggplot() +
#'   geom_point(
#'     data = mtcars,
#'     aes(mpg, wt)
#'   ) +
#'   geom_label(
#'     aes(
#'       x = 30, y = 4.5,
#'       label = "A fairly useless\nannotation that\nuses the custom\nInter variant\nby default."
#'     ),
#'     label.size = 0
#'   ) +
#'   labs(
#'     x = "Fuel efficiency (mpg)", y = "Weight (tons)",
#'     title = "Seminal ggplot2 scatterplot example",
#'     subtitle = "A plot that is only useful for demonstration purposes",
#'     caption = "Brought to you by the letter 'g'"
#'   ) +
#'   theme_gs(grid = "XY")
theme_gs <- function(
  base_size = 11.5,
  line_height = 0.875,
  plot_title_size = 18,
  plot_title_position = "panel",
  plot_title_margin = 10,
  subtitle_size = 12,
  subtitle_margin = 12,
  strip_text_size = 12,
  strip_placement = "outer",
  caption_size = 10,
  caption_margin = 10,
  axis_text_size = base_size,
  axis_title_size = 10,
  axis_title_just = "rt",
  panel_spacing = grid::unit(2, "lines"),
  plot_margin = margin(30, 30, 30, 30),
  mode = c("light", "dark", "rstudio"),
  background_colour = theme_background_color(mode, light = "white", dark = "#121212"),
  foreground_colour = theme_foreground_color(mode, light = "#262626", dark = "#e1e1e1"),
  grid_col = theme_foreground_color(mode, light = "#cccccc", dark = "#606367"),
  axis_col = theme_foreground_color(mode, light = "#2b2b2b", dark = "#606367"),
  grid = TRUE,
  axis = FALSE,
  ticks = FALSE) {

  base_family <- gsc_pkg$normal
  plot_title_family <- gs_pkg_prop$bold
  subtitle_family <- gs_pkg_prop$normal
  strip_text_family <- gs_pkg_prop$bold
  axis_text_family <- gsc_pkg$normal
  caption_family <- gs_pkg_prop$normal
  axis_title_family <- gs_pkg_prop$medium

  finish_theme(
    base_size = base_size,
    line_height = line_height,
    plot_title_size = plot_title_size,
    plot_title_position = plot_title_position,
    plot_title_margin = plot_title_margin,
    subtitle_size = subtitle_size,
    subtitle_margin = subtitle_margin,
    strip_text_size = strip_text_size,
    strip_placement = strip_placement,
    caption_size = caption_size,
    caption_margin = caption_margin,
    axis_text_size = axis_text_size,
    axis_title_size = axis_title_size,
    axis_title_just = axis_title_just,
    panel_spacing = panel_spacing,
    plot_margin = plot_margin,
    mode = mode,
    background_colour = background_colour,
    foreground_colour = foreground_colour,
    grid_col = grid_col,
    axis_col = axis_col,
    grid = grid,
    axis = axis,
    ticks = ticks,
    base_family = base_family,
    plot_title_family = plot_title_family,
    subtitle_family = subtitle_family,
    strip_text_family = strip_text_family,
    axis_text_family = axis_text_family,
    caption_family = caption_family,
    axis_title_family = axis_title_family
  )

}
