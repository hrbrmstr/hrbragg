#' Inter Font Variants
#'
#' On load hrbragg creates two custom Inter font family variants:
#' (`inter_pkg`, `inter_pkg_prop`) and makes them available in the
#' global environment.
#'
#' The reconfigured family variants share the following features:
#'
#' - `calt`: (_Contextual Alternates_): Applies a second substitution feature
#'    based on a match of a character pattern within a context of surrounding patterns
#' - `case` (_Case Sensitive Forms_): Replace characters, especially punctuation, with forms better suited for all-capital text, cf. titl
#' - `dlig`/`ligatures` (_Discretionary Ligatures_): Ligatures to be applied at the user's discretion
#' - `kern` (_Kerning_): Fine horizontal positioning of one glyph to the next, based on the shapes of the glyphs
#' - `salt` (_Stylistic Alternates_): **DISABLED** — Either replaces with, or displays list of, stylistic alternatives for a character
#' - `ss01` (_Stylistic set 1: Alternate digits_): An alternate style of digits.
#' - `zero` (_Slashed Zero_): **DISABLED** — Replaces 0 figure with slashed 0
#'
#' They differ in that the `_prop` variant does not have tabular numbers
#' (`tnum`) enabled (which is more appropriate for titles and general
#' annotations).
#'
#' Inter online documentation has [specific descriptions and examples of these features](https://rsms.me/inter/#features).
#'
#' The objects have the following names corresponding to individual,
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
#' @name inter_pkg
#' @format A list
NULL

#' @name inter_pkg_prop
#' @rdname inter_pkg
NULL


#' Roboto Condensed Font Variants
#'
#' On load hrbragg creates two custom Roboto Condensed font family variants:
#' (`rc_pkg`, `rc_pkg_prop`) and makes them available in the global environment.
#'
#' The reconfigured family variants have the following features:
#'
#' - `ccmp` (_Glyph Composition/Decomposition_): Either calls a ligature replacement
#'    on a sequence of characters or replaces a character with a sequence of glyphs.
#'    Provides logic that can for example effectively alter the order of input characters.
#' - `liga`/`ligatures` (_Standard Ligatures_): Replaces (by default) sequence of characters with a single ligature glyph
#' - `kern` (_Kerning_): Fine horizontal positioning of one glyph to the next, based on the shapes of the glyphs
#'
#' They differ in that the `_prop` variant does not have tabular numbers
#' (`tnum`) enabled (which is more appropriate for titles and general
#' annotations).

#' Roboto Condensed
#' [font family preview/info](https://fonts.google.com/specimen/Roboto+Condensed)
#'
#' This objects have the following names corresponding to individual,
#' customized font variants (ordered by font weight):
#'
#' - `normal_light`
#' - `normal`
#' - `normal_italic`
#' - `bold`
#'
#' @docType data
#' @format A list
#' @name rc_pkg
NULL
# rc_pkg <- NULL

#' @name rc_pkg_prop
#' @rdname rc_pkg
NULL

#' Goldman Sans & Goldman Sans Condensed Font Variants
#'
#' On load hrbragg creates four custom Goldman Sans & Goldman Sans Condensed
#' font family variants: (`gs_pkg`, `gs_pkg_prop`, `gsc_pkg`, `gsc_pkg_prop`)
#' and makes them available in the global environment.
#'
#' The reconfigured family variants have the following features:
#'
#' - `dlig`/`ligatures` (_Discretionary Ligatures_): Ligatures to be applied at the user's discretion
#' - `kern` (_Kerning_): Fine horizontal positioning of one glyph to the next, based on the shapes of the glyphs
#'
#' They differ in that the `_prop` variant does not have tabular numbers
#' (`tnum`) enabled (which is more appropriate for titles and general
#' annotations).
#'
#' The objects have the following names corresponding to individual,
#' customized font variants (ordered by font weight):
#'
#' **Goldman Sans** (`gs_pkg`, `gs_pkg_prop`)
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
#' **Goldman Sans Condensed** (`gsc_pkg`, `gsc_pkg_prop`)
#'
#' - `normal`
#' - `bold`
#'
#' @docType data
#' @format A list
#' @name gs_pkg
NULL

#' @name gs_pkg_prop
#' @rdname gs_pkg
NULL

#' @name gsc_pkg
#' @rdname gs_pkg
NULL

#' @name gsc_pkg_prop
#' @rdname gs_pkg
NULL
