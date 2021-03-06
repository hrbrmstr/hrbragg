% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/x-font-reg.R
\docType{data}
\name{gs_pkg}
\alias{gs_pkg}
\alias{gs_pkg_prop}
\alias{gsc_pkg}
\alias{gsc_pkg_prop}
\title{Goldman Sans & Goldman Sans Condensed Font Variants}
\format{
A list
}
\description{
On load hrbragg creates four custom Goldman Sans & Goldman Sans Condensed
font family variants: (\code{gs_pkg}, \code{gs_pkg_prop}, \code{gsc_pkg}, \code{gsc_pkg_prop})
and makes them available in the global environment.
}
\details{
The reconfigured family variants have the following features:
\itemize{
\item \code{dlig}/\code{ligatures} (\emph{Discretionary Ligatures}): Ligatures to be applied at the user's discretion
\item \code{kern} (\emph{Kerning}): Fine horizontal positioning of one glyph to the next, based on the shapes of the glyphs
}

They differ in that the \verb{_prop} variant does not have tabular numbers
(\code{tnum}) enabled (which is more appropriate for titles and general
annotations).

The objects have the following names corresponding to individual,
customized font variants (ordered by font weight):

\strong{Goldman Sans} (\code{gs_pkg}, \code{gs_pkg_prop})
\itemize{
\item \code{light}
\item \code{normal_italic}
\item \code{normal_light}
\item \code{medium}
\item \code{medium_italic}
\item \code{bold}
\item \code{bold_italic}
\item \code{heavy}
}

\strong{Goldman Sans Condensed} (\code{gsc_pkg}, \code{gsc_pkg_prop})
\itemize{
\item \code{normal}
\item \code{bold}
}
}
