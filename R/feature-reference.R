#' OpenType Typographic Features
#'
#' Quick reference table describing the four-character feature codes. A
#' more complete quick reference can be found
#' [on Wikipedia](https://en.wikipedia.org/wiki/List_of_typographic_features)
#' and a complete OpenType feature list specification can be found
#' [at Microsoft](https://docs.microsoft.com/en-us/typography/opentype/spec/featurelist).
#'
#' - `aalt` (_Access All Alternates_): Special feature: used to present user with choice all alternate forms of the character
#' - `abvf` (_Above-base Forms_): Replaces the above-base part of a vowel sign. For Khmer and similar scripts.
#' - `abvm` (_Above-base Mark Positioning_): Positions a mark glyph above a base glyph.
#' - `abvs` (_Above-base Substitutions_): Ligates a consonant with an above-mark.
#' - `afrc` (_Alternative Fractions_): Converts figures separated by slash with alternative stacked fraction form
#' - `akhn` (_Akhand_): Hindi for unbreakable.  Ligates consonant+halant+consonant, usually only for k-ss and j-ny combinations.
#' - `blwf` (_Below-base Forms_): Replaces halant+consonant combination with a subscript form.
#' - `blwm` (_Below-base Mark Positioning_): Positions a mark glyph below a base glyph
#' - `blws` (_Below-base Substitutions_): Ligates a consonant with a below-mark.
#' - `c2pc` (_Capitals to Petite Caps_): Substitutes capital letters with petite caps
#' - `c2sc` (_Capitals to Small Caps_): Substitutes capital letters with small caps
#' - `calt` (_Contextual Alternates_): Applies a second substitution feature based on a match of a character pattern within a context of surrounding patterns
#' - `case` (_Case Sensitive Forms_): Replace characters, especially punctuation, with forms better suited for all-capital text, cf. titl
#' - `ccmp` (_Glyph Composition/Decomposition_): Either calls a ligature replacement on a sequence of characters or replaces a character with a sequence of glyphs. Provides logic that can for example effectively alter the order of input characters.
#' - `cfar` (_Conjunct Form After Ro_): Khmer
#' - `cjct` (_Conjunct Forms_): Ligates consonant+halant+consonant, indicates part of a conjunct.
#' - `clig` (_Contextual Ligatures_): Applies a second ligature feature based on a match of a character pattern within a context of surrounding patterns
#' - `cpct` (_Centered CJK Punctuation_): Positions punctuation marks vertically and horizontally
#' - `cpsp` (_Capital Spacing_): Adjusts spacing between letters in all-capitals text
#' - `cswh` (_Contextual Swash_): Converts letter to a swashed version based on characters around the letter
#' - `curs` (_Cursive Positioning_): Precise positioning of a letter's connection to an adjacent one
#' - `cv01–cv99` (_Character Variant 1–99_): Multiple variants of a single character, which may not apply to many other characters, see references for voluminous documentation
#' - `dist` (_Distance_): Adjusts horizontal positioning between glyphs. (Always enabled, as opposed to 'kern'.)
#' - `dlig` (_Discretionary Ligatures_): Ligatures to be applied at the user's discretion
#' - `dnom` (_Denominator_): Converts to appropriate fraction denominator form, invoked by frac
#' - `dtls` (_Dotless Forms_):
#' - `expt` (_Expert Forms_): Typographic alternatives for some Japanese tetragrams
#' - `falt` (_Final Glyph on Line Alternates_): Replaces final glyph on the line with an alternate
#' - `fin2` (_Terminal Form #2_): Syriac
#' - `fin3` (_Terminal Form #3_): Syriac
#' - `fina` (_Terminal Forms_): Substitutes a special form of a letter at end of words (required by Arabic and Syriac)
#' - `flac` (_Flattened accent forms_):
#' - `frac` (_Fractions_): Converts figures separated by slash with diagonal fraction
#' - `fwid` (_Full Widths_): Substitutes proportionally spaced character with full-width versions (esp. for Latin letters within Chinese)
#' - `half` (_Half Form_): Replaces consonant+halant with a half form, indicating it is part of a conjunct.
#' - `haln` (_Halant Forms_): Replaces a glyph for final consonant+halant.
#' - `halt` (_Alternate Half Widths_): Re-positions full-width glyphs on half-width spaces
#' - `hist` (_Historical Forms_): Obsolete forms of characters to be applied at the user's discretion, cf. hlig
#' - `hkna` (_Horizontal Kana Alternates_): Alternate forms for horizontal kana text, e.g. ー for chōonpu instead of ｜, cf. vkna
#' - `hlig` (_Historical Ligatures_): Obsolete ligatures to be applied at the user's discretion
#' - `hngl` (_Hangul_): Transliterates Chinese-style characters with Korean Hangul
#' - `hojo` (_Hojo Kanji Forms_): Hojo alternates for Japanese tetragrams
#' - `hwid` (_Half Widths_): Substitutes uniformly-spaced characters with half-width version
#' - `init` (_Initial Forms_): Substitutes a special form of a letter occurring at the beginning of a word (required by Arabic and Syriac)
#' - `isol` (_Isolated Forms_): Substitutes a special form of a letter occurring outside a word (required by Arabic and Syriac)
#' - `ital` (_Italics_): Replaces letter with corresponding italic glyph
#' - `jalt` (_Justification Alternates_): User selectable wider and narrower alternates, used especially for justifying
#' - `jp04` (_JIS 04 Forms_): JIS 2004 alternates for Japanese tetragrams, not accessible per Unicode
#' - `jp78` (_JIS 78 Forms_): JIS C 6226-1978 alternates for Japanese tetragrams, not accessible per Unicode
#' - `jp83` (_JIS 83 Forms_): JIS X 0208-1983 alternates for Japanese tetragrams, not accessible per Unicode
#' - `jp90` (_JIS 90 Forms_): JIS X 0208-1990 alternates for Japanese tetragrams, not accessible per Unicode
#' - `kern` (_Kerning_): Fine horizontal positioning of one glyph to the next, based on the shapes of the glyphs
#' - `lfbd` (_Left Bounds_): Re-positions glyphs at end of line. Called by opbd.
#' - `liga` (_Standard Ligatures_): Replaces (by default) sequence of characters with a single ligature glyph
#' - `ljmo` (_Leading Jamo Forms_): Initial group of consonants for a synthesized Korean Hangul tetragram
#' - `lnum` (_Lining Figures_): Replaces numerals with glyphs meant to fit better in all-capitals text, often also tnum
#' - `locl` (_Localized Forms_): Substitutes character with the preferred form based on script language
#' - `ltra` (_Left-to-right glyph alternates_): Replaces characters with forms befitting left-to-right presentation (except mirrored forms)
#' - `ltrm` (_Left-to-right mirrored forms_): Replaces characters with possibly mirrored forms befitting left-to-right presentation
#' - `mark` (_Mark Positioning_): Fine positioning of a mark glyph to a base character
#' - `med2` (_Medial Form #2_): Syriac
#' - `medi` (_Medial Forms_): Substitutes a special form of letters between other letters in words (required by Arabic and Syriac)
#' - `mgrk` (_Mathematical Greek_): Replaces Greek characters with special forms for use in mathematics
#' - `mkmk` (_Mark-to-mark Positioning_): Fine positioning of a mark glyph to another mark character
#' - `mset` (_Mark Positioning via Substitution_): Used in Windows 95 for positioning of Arabic marks
#' - `nalt` (_Alternate Annotation Forms_): Provides user access to circled digits, inverse letters etc.
#' - `nlck` (_NLC Kanji Forms_): NLC alternates for Japanese tetragrams
#' - `nukt` (_Nukta Forms_): Replace consonant+nukta (dot mark) with single glyph.
#' - `numr` (_Numerator_): Converts to appropriate fraction numerator form, invoked by frac
#' - `onum` (_Oldstyle Figures_): Replaces numerals with cased old-style numerals, often also pnum
#' - `opbd` (_Optical Bounds_): Re-positions glyphs at beginning and end of line, for precise justification of text.
#' - `ordn` (_Ordinals_): Replaces characters with ordinal forms for use after numbers
#' - `ornm` (_Ornaments_): Decorative alternates for the bullet character •
#' - `palt` (_Proportional Alternates_): Re-positions otherwise monospace characters according to glyph width
#' - `pcap` (_Petite Caps_): Substitute lower-case letters with their petite caps analogs
#' - `pkna` (_Proportional Kana_): Kana for use alongside alphabets, without grid typography
#' - `pnum` (_Proportional Figures_): Replaces numerals with glyphs of proportional width, often also onum
#' - `pref` (_Pre-base Forms_): Replaces halant+consonant at the end of a consonant cluster with a glyph at the beginning. Khmer, Myanmar, Malayalam, Telugu
#' - `pres` (_Pre-base Substitutions_): Ligates consonant combinations.
#' - `pstf` (_Post-base Forms_): Substitutes final halant+consonant with special form.  Khmer and Gurmukhi, Malayalam
#' - `psts` (_Post-base Substitutions_): Ligates a final consonant+consonant.
#' - `pwid` (_Proportional Widths_): Replaces uniformly-spaced glyphs with proportional ones
#' - `qwid` (_Quarter Widths_): Replaces uniformly-spaced glyphs with quarter-width ones (punctuation etc.)
#' - `rand` (_Randomize_): Replaces character with random forms (meant to simulate handwriting)
#' - `rclt` (_Required Contextual Alternates_): Contextual alternates required for correct text display which differs from the default join for other letters, required especially important by Arabic
#' - `rkrf` (_Rakar Forms_): Replaces halant+ra with a rakar glyph, indicating it is part of a conjunct.
#' - `rlig` (_Required Ligatures_): Ligatures required for correct text display (any script, but in cursive)
#' - `rphf` (_Reph Form_): Replaces initial ra+halant with a final reph mark, indicating part of a conjunct.
#' - `rtbd` (_Right Bounds_): Re-positions glyphs at beginning of line. Called by opbd.
#' - `rtla` (_Right-to-left glyph alternates_): Replaces characters with forms befitting right-to-left presentation (except mirrored forms)
#' - `rtlm` (_Right-to-left mirrored forms_): Replaces characters with possibly mirrored forms befitting right-to-left presentation
#' - `ruby` (_Ruby Notation Forms_): Ruby characters, small print
#' - `rvrn` (_Required Variation Alternates_): Special variants of a single character, which need apply to specific font variation, required by variable fonts
#' - `salt` (_Stylistic Alternates_): Either replaces with, or displays list of, stylistic alternatives for a character
#' - `sinf` (_Scientific Inferiors_): as in "H2O", "SOx" or "YCbCr" (but using the same font weight and predefined position in contrast these plain HTML subs and sups)
#' - `size` (_Optical size_): Not a lookup: feature's table provides to applications information about the appearance and intent of the font, to aid in font selection.
#' - `smcp` (_Small Caps_): Substitutes lower-case letters with small caps versions
#' - `smpl` (_Simplified Forms_): Replaces sinograms with their simplified versions, may be language dependent
#' - `ss01-ss20` (_Stylistic Set 1 – 20_): Replaces character with one from a font-specific set of stylistic alternatives
#' - `ssty` (_Math script style alternates_):
#' - `stch` (_Stretching Glyph Decomposition_): Substitutes a special form of a stretchy glyph onto one or more letters (required by Syriac)
#' - `subs` (_Subscript_): Replaces character with subscript version, cf. numr
#' - `sups` (_Superscript_): Replaces character with superscript version, cf. dnom
#' - `swsh` (_Swash_): Either replaces character with or displays multiple swashed versions
#' - `titl` (_Titling Alternates_): Replaces characters with forms suited for large type, as in titles
#' - `tjmo` (_Trailing Jamo Forms_): Final group of consonants for a synthesized Korean Hangul tetragram
#' - `tnam` (_Traditional Name Forms_): Japanese alternates for proper names
#' - `tnum` (_Tabular Figures_): Replaces numerals with glyphs of uniform width, often also lnum
#' - `trad` (_Traditional Forms_): Replaces Chinese characters with their traditional versions
#' - `twid` (_Third Widths_): Substitutes uniformly-spaced character with a version of 1/3 width (punctuation, etc.)
#' - `unic` (_Unicase_): Replaces lowercase and uppercase letters with a set of single case glyphs
#' - `valt` (_Alternative Vertical Metrics_): Positions shorter characters to be centered vertically with full-height characters
#' - `vatu` (_Vattu Variants_): Replaces consonant+rakar combinations with a vattu variant ligature.
#' - `vert` (_Vertical Alternates_): A subset of vrt2: prefer the latter feature
#' - `vhal` (_Alternative Vertical Half Metrics_): Positions characters to be centered vertically with half-height characters
#' - `vjmo` (_Vowel Jamo Forms_): Medial group of vowels for a synthesized Korean Hangul tetragram
#' - `vkna` (_Vertical Kana_): Alternate Japanese kana forms for vertical text, e.g. ｜ for chōonpu instead of ー, cf. hkna
#' - `vkrn` (_Vertical Kerning_): Fine vertical positioning of characters based on shape
#' - `vpal` (_Proportional Alternate Vertical Metrics_): Re-positions glyphs vertically to be centered on proportional full-height characters
#' - `vrt2` (_Vertical Alternates and Rotation_): Replaces characters with forms suitable for vertical writing, possibly by rotating 90°
#' - `vrtr` (_Vertical Alternates for Rotation_): Replaces characters with forms suitable for vertical writing, possibly by shifting or shape
#' - `zero` (_Slashed Zero_): Replaces 0 figure with slashed 0
#' @name opentype_typographic_features
NULL