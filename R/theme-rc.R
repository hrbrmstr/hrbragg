#' ggplot2 Theme Based On The Roboto Condensed Font Family
#'
#' Uses the built-in [rc_pkg] custom font.
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
#'   theme_rc(grid = "XY")
theme_rc <- function(
  base_size = 10,
  line_height = 0.875,
  plot_title_size = 18,
  plot_title_position = "panel",
  plot_title_margin = 10,
  subtitle_size = 12,
  subtitle_margin = 12,
  strip_text_size = 12,
  strip_placement = "outer",
  caption_size = 9,
  caption_margin = 10,
  axis_text_size = base_size,
  axis_title_size = 9,
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

  base_family <- rc_pkg$normal
  plot_title_family <- rc_pkg$bold
  subtitle_family <- rc_pkg$normal
  strip_text_family <- rc_pkg$bold
  axis_text_family <- rc_pkg$normal
  caption_family <- rc_pkg$normal_light
  axis_title_family <- rc_pkg$bold

  c(
    "GeomRect", "GeomLabel", "GeomTile", "GeomViolin"
  ) -> has_reverse_cols

  geoms <- ls(pattern = '^Geom', env = as.environment('package:ggplot2'))

  for (geom in geoms) {

    update_geom_defaults(
      geom = get(geom),
      new = list(
        arrow.fill = background_colour,
        outlier.colour = foreground_colour,
        outlier.fill = background_colour,
        colour = foreground_colour,
        fill = if (geom %in% c(has_reverse_cols)) background_colour else NA,
        family = base_family,
        lineheight = line_height
      )
    )

  }

  theme_minimal(
    base_family = base_family,
    base_size = base_size,
  ) +
    theme(
      rect = element_rect(colour = foreground_colour, fill = background_colour),
      line = element_line(colour = foreground_colour),
      title = element_text(colour = foreground_colour),
      legend.background = element_blank(),
      legend.key = element_blank(),
      legend.text = element_text(colour = foreground_colour, family = inter_pkg$medium),
      legend.title = element_text(colour = foreground_colour, family = inter_pkg$semibold)
    ) -> ret


  if (inherits(grid, "character") | grid == TRUE) {

    ret +
      theme(
        panel.grid = element_line(colour = grid_col, size = 0.2),
        panel.grid.major = element_line(colour = grid_col, size = 0.2),
        panel.grid.minor = element_line(colour = grid_col, size = 0.15)
      ) -> ret

    if (inherits(grid, "character")) {
      if (regexpr("X", grid)[1] < 0) ret <- ret + theme(panel.grid.major.x = element_blank())
      if (regexpr("Y", grid)[1] < 0) ret <- ret + theme(panel.grid.major.y = element_blank())
      if (regexpr("x", grid)[1] < 0) ret <- ret + theme(panel.grid.minor.x = element_blank())
      if (regexpr("y", grid)[1] < 0) ret <- ret + theme(panel.grid.minor.y = element_blank())
    }

  } else {
    ret <- ret + theme(panel.grid = element_blank())
  }

  if (inherits(axis, "character") | axis == TRUE) {
    ret <- ret + theme(axis.line = element_line(colour = axis_col, size = 0.15))
    if (inherits(axis, "character")) {
      axis <- tolower(axis)
      if (regexpr("x", axis)[1] < 0) {
        ret <- ret + theme(axis.line.x = element_blank())
      } else {
        ret <- ret + theme(axis.line.x = element_line(colour = axis_col, size = 0.15))
      }
      if (regexpr("y", axis)[1] < 0) {
        ret <- ret + theme(axis.line.y = element_blank())
      } else {
        ret <- ret + theme(axis.line.y = element_line(colour = axis_col, size = 0.15))
      }
    } else {
      ret + theme(
        axis.line.x = element_line(colour = axis_col, size = 0.15),
        axis.line.y = element_line(colour = axis_col, size = 0.15)
      ) -> ret
    }
  } else {
    ret <- ret + theme(axis.line = element_blank())
  }

  if (!ticks) {

    ret + theme(
      axis.ticks = element_blank(),
      axis.ticks.x = element_blank(),
      axis.ticks.y = element_blank()
    ) -> ret

  } else {

    ret + theme(
      axis.ticks = element_line(size = 0.15),
      axis.ticks.x = element_line(size = 0.15),
      axis.ticks.y = element_line(size = 0.15),
      axis.ticks.length = grid::unit(5, "pt")
    ) -> ret

  }

  xj <- switch(tolower(substr(axis_title_just, 1, 1)), b = 0, l = 0, m = 0.5, c = 0.5, r = 1, t = 1)
  yj <- switch(tolower(substr(axis_title_just, 2, 2)), b = 0, l = 0, m = 0.5, c = 0.5, r = 1, t = 1)

  ret +
    theme(
      axis.text.x = element_text(size = axis_text_size, margin = margin(t = 0), lineheight = line_height),
      axis.text.x.top = element_text(size = axis_text_size, margin = margin(t = 0), lineheight = line_height),
      axis.text.x.bottom = element_text(size = axis_text_size, margin = margin(t = 0), lineheight = line_height),

      axis.text.y = element_text(size = axis_text_size, margin = margin(r = 0), lineheight = line_height),
      axis.text.y.left = element_text(size = axis_text_size, margin = margin(r = 0), lineheight = line_height),
      axis.text.y.right = element_text(size = axis_text_size, margin = margin(r = 0), lineheight = line_height),

      axis.title = element_text(
        size = axis_title_size,
        family = axis_title_family, lineheight = line_height
      ),

      axis.title.x = element_text(
        hjust = xj, size = axis_title_size,
        family = axis_title_family, lineheight = line_height
      ),
      axis.title.x.top = element_text(
        hjust = xj, size = axis_title_size,
        family = axis_title_family, lineheight = line_height
      ),
      axis.title.x.bottom = element_text(
        hjust = xj, size = axis_title_size,
        family = axis_title_family, lineheight = line_height
      ),

      axis.title.y = element_text(
        hjust = yj, size = axis_title_size,
        family = axis_title_family, lineheight = line_height
      ),
      axis.title.y.left = element_text(
        hjust = yj, size = axis_title_size,
        family = axis_title_family, lineheight = line_height
      ),
      axis.title.y.right = element_text(
        hjust = yj, size = axis_title_size, angle = 90,
        family = axis_title_family, lineheight = line_height
      ),

      strip.placement = strip_placement,
      strip.text = element_text(
        hjust = 0, size = strip_text_size,  color = foreground_colour,
        family = strip_text_family, lineheight = line_height
      ),
      strip.text.x = element_text(
        hjust = 0, size = strip_text_size, color = foreground_colour,
        family = strip_text_family, lineheight = line_height
      ),
      strip.background = element_rect(
        fill = background_colour, color = NA
      ),
      strip.background.x = element_rect(
        fill = background_colour, color = NA
      ),
      strip.background.y = element_rect(
        fill = background_colour, color = NA
      ),
      strip.text.y = element_text(
        hjust = 0, size = strip_text_size, color = foreground_colour,
        family = strip_text_family, lineheight = line_height
      ),
      panel.spacing = panel_spacing,
      panel.background = element_rect(color = NA, fill = background_colour),
      plot.background = element_rect(color = NA, fill = background_colour),
      plot.title.position = plot_title_position,
      plot.margin = plot_margin,
      plot.title = element_text(
        hjust = 0, size = plot_title_size, margin = margin(b = plot_title_margin),
        family = plot_title_family, lineheight = line_height
      ),
      plot.subtitle = element_text(
        hjust = 0, size = subtitle_size, margin = margin(b = subtitle_margin),
        family = subtitle_family, lineheight = line_height
      ),
      plot.caption = element_text(
        hjust = 1, size = caption_size, margin = margin(t = caption_margin),
        family = caption_family, lineheight = line_height
      ),
    ) -> ret

  ret

}
