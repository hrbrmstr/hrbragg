#' Inter Font Variant
#'
#' On load hrbragg creates a custom Inter font family variant
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
#' Inter online documentation has [specific descriptions and examples of these features](https://rsms.me/inter/#features).
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


#' Robot Condensed Font Variant
#'
#' On load hrbragg creates a custom Roboto Condensed font family variant
#' and makes it available in the global environment.
#'
#' The reconfigured family variant has the following features:
#'
#' - `ccmp` (_Glyph Composition/Decomposition_): Either calls a ligature replacement
#'    on a sequence of characters or replaces a character with a sequence of glyphs.
#'    Provides logic that can for example effectively alter the order of input characters.
#' - `liga`/`ligatures` (_Standard Ligatures_): Replaces (by default) sequence of characters with a single ligature glyph
#' - `kern` (_Kerning_): Fine horizontal positioning of one glyph to the next, based on the shapes of the glyphs
#' - `tnum` (_Tabular Figures_): Replaces numerals with glyphs of uniform width, often also lnum
#'
#' Roboto Condensed
#' [font family preview/info](https://fonts.google.com/specimen/Roboto+Condensed)
#'
#' This object has the following names corresponding to individual,
#' customized font variants (ordered by font weight):
#'
#' - `normal_light`
#' - `normal`
#' - `normal_italic`
#' - `bold`
#'
#' @docType data
#' @format A list
#' @export
rc_pkg <- NULL

#' Goldman Sans & Goldman Sans Condensed Font Variants
#'
#' On load hrbragg creates a custom Goldman Sans & Goldman Sans Condensed
#' font family variants and makes them available in the global environment.
#'
#' The reconfigured family variant has the following features:
#'
#' This object has the following names corresponding to individual,
#' customized font variants (ordered by font weight):
#'
#' **Goldman Sans** (`gs_rc`)
#'
#' - `light`
#' - `normal_italic`
#' - `normal_light`
#' - `medium`
#' - `medium_italic`
#' - `bold`
#' - `bold_italic`
#' - `heavy`
#'
#' **Goldman Sans Condensed** (`gsc_rc`)
#'
#' - `normal`
#' - `bold`
#'
#' @docType data
#' @format A list
#' @export
gs_pkg <- NULL

#' @docType data
#' @format A list
#' @export
gsc_pkg <- NULL
