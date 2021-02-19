#' OpenType feature description lookup table
#'
#' Compact data frame describing OpenType features.
#'
#' @format A data frame with 122 rows and 3 variables:
#' \describe{
#'   \item{tag}{OpenType four-character tag name}
#'   \item{long_name}{Human-readable tag name}
#'   \item{description}{Compact description of the tag}
#' }
#' @source \url{https://en.wikipedia.org/wiki/List_of_typographic_features}
"feature_dict"