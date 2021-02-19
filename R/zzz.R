#' Inter Font Variant
#'
#' On load {hrbragg} creates a custom Inter font family variant
#' and makes it available in the global environment.
#'
#' The reconfigured family variant has the following features:
#'
#' - `calt`: (_Contextual Alternates_): Applies a second substitution feature
#'    based on a match of a character pattern within a context of surrounding patterns
#' - `case` (_Case Sensitive Forms_): Replace characters, especially punctuation, with forms better suited for all-capital text, cf. titl
#' - `dlig`/`ligatures` (_Discretionary Ligatures_): Ligatures to be applied at the user's discretion
#' - `kern` (_Kerning_): Fine horizontal positioning of one glyph to the next, based on the shapes of the glyphs
#' - `salt` (_Stylistic Alternates_): **DISABLED** — Either replaces with, or displays list of, stylistic alternatives for a character
#' - `ss01` (_Stylistic set 1: Alternate digits_): An alternate style of digits.
#' - `tnum` (_Tabular Figures_): Replaces numerals with glyphs of uniform width, often also lnum
#' - `zero` (_Slashed Zero_): **DISABLED** — Replaces 0 figure with slashed 0
#'
#' Inter online documentation has [specific descriptions and exaples of these features](https://rsms.me/inter/#features).
#'
#' This object has the following names corresponding to individual,
#' customized font variants (ordered by font weight):
#'
#' - `ultralight`
#' - `ultralight_italic`
#' - `light`
#' - `light_italic`
#' - `normal_italic`
#' - `normal`
#' - `medium_italic`
#' - `medium`
#' - `semibold_italic`
#' - `semibold`
#' - `bold`
#' - `bold_italic`
#' - `ultrabold`
#' - `ultrabold_italic`
#' - `heavy`
#' - `heavy_italic`
#'
#' @docType data
#' @format A list
#' @export
inter_pkg <- NULL

.onLoad <- function(...) {

  if (systemfonts::font_info("Inter")[["family"]][1] == "Inter") {

    if (interactive()) packageStartupMessage("Registering 'Inter' font variant.")

    reconfigure_font(
      prefix = "hrbragg-pkg",
      family = "Inter",
      width = "normal",
      ligatures = "discretionary",
      calt = 1, tnum = 1, case = 1,
      dlig = 1, ss01 = 1, kern = 1,
      zero = 0, salt = 0
    ) ->> inter_pkg

  } else {

    packageStartupMessage(
      "Please run `install_inter()`. This is only an interim requirement."
    )

  }

}
