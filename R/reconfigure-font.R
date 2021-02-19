#' Create an complete, alternate font family with the same customized features
#'
#' @param family font family name
#' @param width font width (defaults to "normal")
#' @param ligatures,letters,numbers See [systemfonts::font_feature()]
#' @param prefix string to use as a prefix to the names of the newly generated font family.
#'        If not specified, a guaranteed unique identifier will be used.
#' @param ... Extra four-letter font feature flags passed on to [systemfonts::font_feature()]. See
#'        See [Microsoft](https://docs.microsoft.com/en-us/typography/opentype/spec/featurelist) and
#'        [Wikipedia](https://en.wikipedia.org/wiki/List_of_typographic_features) for tag descriptions.
#' @return list with names of all the customized font family members. A `family`
#'         attribute is included which is the name of the family this variant is
#'         based on.
#' @export
#' @examples
#' reconfigure_font(
#'   family = "Inter",
#'   width = "normal",
#'   ligatures = "discretionary",
#'   calt = 1, tnum = 1, case = 1,
#'   dlig = 1, ss01 = 1, kern = 1,
#'   zero = 0, salt = 0
#' ) -> inter_1
reconfigure_font <- function(family, width = "normal",
                             ligatures = NULL, letters = NULL, numbers = NULL,
                             prefix = uuid::UUIDgenerate(), ...) {

  # make sure the font exists

  fam <- systemfonts::system_fonts()
  fam <- fam[tolower(fam$family) == tolower(family) & fam$width == width,]

  if (nrow(fam) == 0) stop("No font family found with the specified name and width.", call. = FALSE)

  # order by weight

  fam <- fam[order(fam$weight),]

  # make sure the font supports all the features specified

  supports <- unlist(textshaping::get_font_features(family))
  supplied <- list(...)
  supplied <- setdiff(names(supplied), c("ligatures", "letters", "numbers"))
  unsupported <- supplied[!(supplied %in% supports)]

  if (length(unsupported) != 0) {
    stop(
      sprintf(
        "%s does not support (%s) feature%s but does support (%s).",
        family,
        paste0(unsupported, collapse = ", "),
        if (length(unsupported == 1)) "" else "s",
        paste0(supports, collapse = ", ")
      ),
      call. = FALSE

    )
  }

  # set the features we'll use with each variant

  font_feature(
    ligatures = ligatures,
    letters = letters,
    numbers = numbers,
    ...
  ) -> feat

  # make some room for the return value

  ret <- list()

  # go through each default variant and make a new font with
  # the specified feature(s) configuration

  for (idx in 1:nrow(fam)) {

    tmp_nam <- sprintf("%s %s %s", prefix, family, fam$style[idx])

    idx_nam <- as.character(fam$weight[idx])
    if (fam$italic[idx]) idx_nam <- sprintf("%s_italic", idx_nam)
    if (fam$monospace[idx]) idx_nam <- sprintf("%s_mono", idx_nam)
    if (fam$style[idx] == "Light") idx_nam <- sprintf("%s_light", idx_nam)

    (ret[[idx_nam]] <- tmp_nam)

    register_variant(
      name = tmp_nam,
      weight = as.character(fam$weight[idx]),
      features = feat,
      family = family,
      width = width
    )

  }

  # keep the font name handy
  attr(ret, "family") <- family

  ret

}