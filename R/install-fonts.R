install_font <- function(family_name, sub_dir) {

  loc <- system.file("fonts", sub_dir, package = "hrbragg")

  if (platform() == "mac") {

    font_library <- path.expand("~/Library/Fonts")

    if (!dir.exists(font_library)) {
      dir.create(font_library, showWarnings = TRUE, mode = "0700")
    }

    message("Copying ", family_name, " to ", font_library)

    file.copy(
      from = list.files(path = loc, full.names = TRUE),
      to = font_library
    ) -> res

  } else {

    message(
      "The ", family_name, " font files are in:\n",
      system.file("fonts", sub_dir, package = "hrbragg"),
      "\nand should be installed on your system. Future versions ",
      "of {hrbragg} will not force this requirement but it is very",
      "likely you'll be using this font outside of R graphics devices",
      "so it does make a bit of sense to have them outside of the R",
      "package library directory."
    )

  }

}

#' Install Goldman Sans
#'
#' Goldman Sans is a clean, modern typeface designed for dense data-rich
#' environments. From open letter shapes, enlarged x-height, and optical
#' balancing of individual letterforms, we designed Goldman Sans with
#' clarity in mind. Both normal and condensed versions are provided.
#'
#' @export
#' @note [Goldman Sans Restricted Font License](https://design.gs.com/d/legal/goldman-sans-license)
#' @references [Goldman Sans](https://design.gs.com/d/story/goldman-sans/)
#' @examples
#' install_goldman_sans()
#' install_goldman_sans_condensed()
install_goldman_sans <- function() {
  install_font("Goldman Sans", "goldman-sans")
}

#' Install Clear Sans
#'
#' Clear Sans has minimized, unambiguous characters and slightly narrow proportions, making it
#' ideal for UI design. Its strong, recognizable forms avoid distracting ambiguity, making it
#' comfortable for reading short UI labels and long passages in both screen and print.
#'
#' @export
#' @note [Clear Sans Font License](https://github.com/intel/clear-sans/blob/main/LICENSE.txt)
#' @references [Clear Sans](https://github.com/intel/clear-sans)
#' @examples
#' install_clean_sans()
install_clear_sans <- function() {
  install_font("Clear Sans", "clear-sans")
}

#' Install Eau Sans
#'
#' Eau Sans is (via the creator): "In 1992, I wanted to design a perfectly faceless typeface of my own.
#' I chose Eau, meaning water in French, as the name. I planned to do two variations; a sanserif and
#' a Roman serif style version. I could not decide on the design details for the Roman variation,
#' so only the sanserif version was completed. Although I think that Eau Sans needs more refinement,
#' present it here as it was originally designed. At the time of release, I re-formatted the Eau Sans
#' family with numeric characters in three variations: proportional, lining and old-styled figures.
#' This typeface is used for my electronic sound project: parabola."
#'
#' @export
#' @references [Eau Sans](http://www.yoworks.com/eau/index.html)
#' @examples
#' install_eau_sans()
install_eau_sans <- function() {
  install_font("Eau Sans", "eau-sans")
}

#' @rdname install_goldman_sans
#' @export
install_goldman_sans_condensed <- function() {
  install_font("Goldman Sans", "goldman-sans-condensed")
}

#' Install Roboto Condensed
#'
#' Roboto has a dual nature. It has a mechanical skeleton and the forms are
#' largely geometric. At the same time, the font features friendly and open
#' curves. While some grotesks distort their letterforms to force a rigid rhythm,
#' Roboto doesn’t compromise, allowing letters to be settled into their natural
#' width. This makes for a more natural reading rhythm more commonly found in
#' humanist and serif types.
#'
#' @note [Apache License, Version 2.0.](http://www.apache.org/licenses/LICENSE-2.0)
#' @export
#' @examples
#' install_roboto_condensed()
install_roboto_condensed <- function() {
  install_font("Roboto Condensed", "roboto-condensed")
}

#' Install Inter
#'
#' Inter is a typeface carefully crafted & designed for computer screens and
#' features a tall x-height to aid in readability of mixed-case and lower-case
#' text. Several OpenType features are provided as well, like contextual
#' alternates that adjusts punctuation depending on the shape of surrounding
#' glyphs, slashed zero for when you need to disambiguate "0" from "o",
#' tabular numbers, etc.
#'
#'
#' @note [SIL Open Font License 1.1](https://choosealicense.com/licenses/ofl-1.1/)
#' @references [Inter](https://rsms.me/inter/)
#' @export
install_inter <- function() {
  install_font("Inter", "inter")
}
