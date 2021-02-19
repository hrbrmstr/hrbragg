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

  if (systemfonts::font_info("Roboto Condensed")[["family"]][1] == "Roboto Condensed") {
    reconfigure_font(
      prefix = "hrbragg",
      family = "Roboto Condensed",
      width = "normal",
      ligatures = "standard",
      ccmp = 1, kern = 1, tnum = 1
    ) ->> rc_pkg
  } else {
    packageStartupMessage(
      "Please run `install_roboto_condensed()`. This is only an interim requirement."
    )
  }

  if (systemfonts::font_info("Goldman Sans")[["family"]][1] == "Goldman Sans") {

    reconfigure_font(
      prefix = "hrbragg",
      family = "Goldman Sans",
      width = "normal",
      ligatures = "standard",
      kern = 1, tnum = 1
    ) ->> gs_pkg

    reconfigure_font(
      prefix = "hrbragg",
      family = "Goldman Sans Condensed",
      width = "semicondensed",
      ligatures = "standard",
      kern = 1, tnum = 1
    ) ->> gsc_pkg


  } else {
    packageStartupMessage(
      "Please run `install_goldman_sans()`. This is only an interim requirement."
    )
  }


}



























