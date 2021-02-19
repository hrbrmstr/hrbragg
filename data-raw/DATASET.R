## code to prepare `feature_dict` dataset goes here

library(rvest)
library(tidyverse)

pg <- read_html("https://en.wikipedia.org/wiki/List_of_typographic_features")

pg %>%
  html_nodes(xpath = ".//table[contains(., 'Long name')]") %>%
  map_df(html_table) %>%
  as_tibble() %>%
  janitor::clean_names() %>%
  # mutate(
  #   doc = sprintf(
  #     "- `%s` (_%s_): %s", tag, long_name, description
  #   )
  # ) %>%
  arrange(tag) %>%
  select(tag, long_name, description) -> feature_dict

usethis::use_data(feature_dict, overwrite = TRUE)
