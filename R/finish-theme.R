finish_theme <- function(base_size,
                         line_height,
                         plot_title_size,
                         plot_title_position,
                         plot_title_margin,
                         subtitle_size,
                         subtitle_margin,
                         strip_text_size,
                         strip_placement,
                         caption_size,
                         caption_margin,
                         axis_text_size,
                         axis_title_size,
                         axis_title_just,
                         panel_spacing,
                         plot_margin,
                         mode,
                         background_colour,
                         foreground_colour,
                         grid_col,
                         axis_col,
                         grid,
                         axis,
                         ticks,
                         base_family,
                         plot_title_family,
                         subtitle_family,
                         strip_text_family,
                         axis_text_family,
                         caption_family,
                         axis_title_family) {

  c(
    "GeomRect", "GeomLabel", "GeomTile", "GeomViolin"
  ) -> has_reverse_cols

  geoms <- ls(pattern = '^Geom', env = as.environment('package:ggplot2'))

  for (geom in geoms) {

    update_geom_defaults(
      geom = get(geom),
      new = list(
        # arrow.fill = background_colour,
        # outlier.colour = foreground_colour,
        # outlier.fill = background_colour,
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