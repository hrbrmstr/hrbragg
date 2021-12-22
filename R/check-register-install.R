font_is_installed <- function(family) {
  first <- systemfonts::font_info(family[1])[["family"]][1]
  first == family[1]
}

it_is_ok_to_annoy <- function() {
  getOption("hrbragg.verbose", TRUE) && interactive()
}

startup_msg <- function(...) {
  if (it_is_ok_to_annoy()) packageStartupMessage(...)
}

register_reconfig <- function(family,
                              glob_prefix,
                              inst_f,
                              font_dir,
                              width = "normal",
                              has_tnum = TRUE,
                              ligatures = NULL,
                              letters = NULL,
                              numbers = NULL,
                              ...) {

  if (!font_is_installed(family)) {

    startup_msg(
      "Please run '", inst_f, "' to install '", family, "', then restart your R session."
    )

    return()

    # startup_msg(
    #   "Using {hrbragg} copy of '", family, ". ",
    #   "Run '", inst_f, "' to install the font."
    # )
    #
    # systemfonts::register_font(
    #   name = family,
    #   plain = system.file("fonts", font_dir, package = "hrbragg")
    # )

  }

  startup_msg("Registering '", family, "' font variant.")

  if (has_tnum) {
    reconfigure_font(
      prefix = "hrbragg-pkg tab",
      family = family,
      width = width,
      ligatures = ligatures,
      tnum = 1,
      ...
    ) -> has_tnum

    reconfigure_font(
      prefix = "hrbragg-pkg prop",
      family = family,
      width = width,
      ligatures = "discretionary",
      tnum = 0,
      ...
    ) -> no_tnum

    assign(sprintf("%s_pkg", glob_prefix), has_tnum, .GlobalEnv)
    assign(sprintf("%s_pkg_prop", glob_prefix), no_tnum, .GlobalEnv)

  } else {

    reconfigure_font(
      prefix = "hrbragg-pkg prop",
      family = family,
      width = width,
      ligatures = "discretionary",
      ...
    ) -> no_tnum

    assign(sprintf("%s_pkg", glob_prefix), no_tnum, .GlobalEnv)

  }

}

register_fonts <- function() {

  register_reconfig(
    family = "Inter",
    glob_prefix = "inter",
    inst_f = "install_inter()",
    font_dir = "inter",
    width = "normal",
    ligatures = "discretionary",
    calt = 1, case = 1, dlig = 1, ss01 = 1,
    kern = 1, zero = 0, salt = 0
  )

  register_reconfig(
    family = "Roboto Condensed",
    glob_prefix = "rc",
    inst_f = "install_roboto_condensed()",
    font_dir = "roboto-condensed",
    width = "normal",
    ligatures = "standard",
    ccmp = 1, kern = 1
  )

  register_reconfig(
    family = "Goldman Sans",
    glob_prefix = "gs",
    inst_f = "install_goldman_sans()",
    font_dir = "goldman-sans",
    width = "normal",
    ligatures = "standard",
    kern = 1
  )

  register_reconfig(
    family = "Goldman Sans Condensed",
    glob_prefix = "gsc",
    inst_f = "install_goldman_sans_condensed()",
    font_dir = "goldman-sans-condensed",
    width = "semicondensed",
    ligatures = "standard",
    kern = 1
  )

  register_reconfig(
    family = "Clear Sans",
    glob_prefix = "clear_sans",
    inst_f = "install_clear_sans()",
    font_dir = "clear-sans",
    width = "normal",
    ligatures = "standard",
    kern = 1,
    has_tnum = FALSE
  )

  register_reconfig(
    family = "Eau",
    glob_prefix = "eau_sans",
    inst_f = "install_eau_sans()",
    font_dir = "eau-sans",
    width = "normal",
    ligatures = "standard",
    has_tnum = FALSE
  )

  startup_msg(
    "Use `options(hrbragg.verbose = FALSE)` to silence font registration messages"
  )

}