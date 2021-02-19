#' Preview numbers, kerning, and ligatures from font variants you create
#'
#' Use this function to preview the special features of fonts you create
#' including how well the default kerning ruls work, how tabular numbers
#' behave, and whether or not modern, fun ligatures are supported. Change
#' the `test_label` if you wish to use a custom preview string.
#'
#' @param font_variant a font variant object created with [reconfigure_font()]
#' @param font_size passed to [ggplot2::geom_text()]
#' @param test_label a specially designed preview string to showcase some
#'         specific font features
#' @return A ggplot2 object
#' @export
#' @examples
#' reconfigure_font(
#'   family = "Trattatello",
#'   width = "normal",
#'   ligatures = "discretionary",
#'   calt = 1, tnum = 1, case = 1,
#'   dlig = 1, kern = 1,
#'   zero = 0, salt = 0
#' ) -> trat
#'
#' preview_variant(trat)
#'
#' reconfigure_font(
#'   family = "Barlow",
#'   width = "normal",
#'   ligatures = "standard",
#'   tnum = 1, kern = 1
#' ) -> barlow
#'
#' preview_variant(barlow)
preview_variant <- function(font_variant, font_size = 5,
                           test_label = "Lorem Ipsum dolor sit amet consectetur. => A⃝\n−0+1:2~3,456789\n−9+8:7~6,543210") {

  ggplot() +
    geom_text(
      data = data.frame(
        x = rep(1, length(font_variant)),
        y = 2 * (0:(length(font_variant)-1)),
        family = unlist(font_variant, use.names = FALSE)
      ),
      aes(x = x, y = y, label = test_label, family = family),
      size = font_size, lineheight = 0.875, color = "black"
    ) +
    scale_y_continuous(expand = c(0, 2)) +
    labs(title = attr(font_variant, "family")) +
    theme_minimal() +
    theme(
      plot.title = element_text(family = font_variant$normal, size = 9, hjust = 0.5)
    ) +
    theme(
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank()
    ) +
    theme(
      axis.text = element_blank(),
      axis.title = element_blank()
    )

}
