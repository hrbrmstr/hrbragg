
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Signed
by](https://img.shields.io/badge/Keybase-Verified-brightgreen.svg)](https://keybase.io/hrbrmstr)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-100%25-lightgrey.svg)
[![Linux build
Status](https://travis-ci.org/hrbrmstr/hrbragg.svg?branch=master)](https://travis-ci.org/hrbrmstr/hrbragg)  
![Minimal R
Version](https://img.shields.io/badge/R%3E%3D-3.6.0-blue.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

# hrbragg

Typography-centric Themes, Theme Components, and Utilities for ‘ggplot2’
and ‘ragg’.

## Description

The ‘ragg’, ‘systemfonts’, and ‘textshaping’ packages make it possible
to create plot components and themes that make full use of the rich
typography features in modern fonts. Fonts, themes, and utilities are
provided to create ‘ggplot2’ plots intended for rendering on ‘ragg’
graphics devices.

## What’s Inside The Tin

The following functions are implemented:

-   `adaptive_color`: Adaptive colors colors for hrbragg themes
-   `elb`: Shortcut for element\_blank
-   `ell`: Shortcut for element\_line
-   `elr`: Shortcut for element\_rect
-   `elt`: Shortcut for element\_text
-   `feature_dict`: OpenType feature description lookup table
-   `install_inter`: Install Inter
-   `inter_pkg`: Inter Font Variant
-   `opentype_typographic_features`: OpenType Typographic Features
-   `reconfigure_font`: Create an complete, alternate font family with
    the same customized features
-   `theme_inter`: ggplot2 Theme Based On The Inter Font Family

## Installation

``` r
remotes::install_git("https://git.rud.is/hrbrmstr/hrbragg.git")
# or
remotes::install_gitlab("hrbrmstr/hrbragg")
# or
remotes::install_bitbucket("hrbrmstr/hrbragg")
```

NOTE: To use the ‘remotes’ install options you will need to have the
[{remotes} package](https://github.com/r-lib/remotes) installed.

## Usage

``` r
library(hrbragg)
library(ggplot2)

# current version
packageVersion("hrbragg")
## [1] '0.1.0'
```

For the moment, you’ll need to install Inter:

``` r
install_inter()
```

``` r
str(inter_pkg, 1)
## List of 16
##  $ ultralight       : chr "hrbragg-pkg Inter Thin"
##  $ ultralight_italic: chr "hrbragg-pkg Inter Thin Italic"
##  $ light            : chr "hrbragg-pkg Inter Extra Light"
##  $ light_italic     : chr "hrbragg-pkg Inter Extra Light Italic"
##  $ normal_italic    : chr "hrbragg-pkg Inter Light Italic"
##  $ normal           : chr "hrbragg-pkg Inter Light"
##  $ medium_italic    : chr "hrbragg-pkg Inter Medium Italic"
##  $ medium           : chr "hrbragg-pkg Inter Medium"
##  $ semibold_italic  : chr "hrbragg-pkg Inter Semi Bold Italic"
##  $ semibold         : chr "hrbragg-pkg Inter Semi Bold"
##  $ bold             : chr "hrbragg-pkg Inter Bold"
##  $ bold_italic      : chr "hrbragg-pkg Inter Bold Italic"
##  $ ultrabold        : chr "hrbragg-pkg Inter Extra Bold"
##  $ ultrabold_italic : chr "hrbragg-pkg Inter Extra Bold Italic"
##  $ heavy            : chr "hrbragg-pkg Inter Black"
##  $ heavy_italic     : chr "hrbragg-pkg Inter Black Italic"
##  - attr(*, "family")= chr "Inter"
```

``` r
ggplot() +
  geom_point(
    data = mtcars,
    aes(mpg, wt, color = factor(cyl))
  ) +
  geom_label(
    aes(
      x = 15, y = 5.48,
      label = "<- A fairly useless annotation\n       that uses the custom Inter\n          variant by default."
    ),
    label.size = 0, hjust = 0, vjust = 1
  ) +
  labs(
    x = "Fuel efficiency (mpg)", y = "Weight (tons)",
    title = "Seminal ggplot2 scatterplot example",
    subtitle = "A plot that is only useful for demonstration purposes",
    caption = "Brought to you by the letter 'g'"
  ) -> gg1
```

``` r
gg1 + theme_inter(grid = "XY", mode = "dark") 
```

<img src="man/figures/README-dark-mode-01-1.png" width="672" />

``` r
gg1 + theme_inter(grid = "XY", mode = "light") 
```

<img src="man/figures/README-light-mode-01-1.png" width="672" />

``` r
ggplot() +
  geom_point(
    data = mpg,
    aes(displ, hwy, color = trans)
  ) +
  facet_wrap(
    vars(cyl, drv), scales = "free", drop = TRUE
  ) +
  labs(
    x = "Displacement", y = "Highway",
    title = "Another seminal ggplot2 scatterplot example",
    subtitle = "A plot that is only useful for demonstration purposes",
    caption = "Brought to you by the letter 'g'"
  ) -> gg2
```

``` r
gg2 + theme_inter(grid = "XY", mode = "light") 
```

<img src="man/figures/README-light-mode-02-1.png" width="1400" />

``` r
gg2 + theme_inter(grid = "XY", mode = "dark") 
```

<img src="man/figures/README-dark-mode-02-1.png" width="1400" />

## hrbragg Metrics

| Lang | \# Files |  (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
|:-----|---------:|-----:|----:|-----:|------------:|-----:|---------:|-----:|
| R    |       13 | 0.46 | 332 | 0.43 |          89 | 0.39 |      646 | 0.47 |
| Rmd  |        1 | 0.04 |  50 | 0.07 |          26 | 0.11 |       46 | 0.03 |
| SUM  |       14 | 0.50 | 382 | 0.50 |         115 | 0.50 |      692 | 0.50 |

clock Package Metrics for hrbragg

## Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
