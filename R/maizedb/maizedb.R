library(maizedb)

list.files("../../raw-data/",
           pattern = "*.R",
           recursive = TRUE,
           full.names = TRUE) %>%
  magrittr::set_names(.,tools::file_path_sans_ext(basename(.))) %>%
  purrr::map(function(f){
    source(f, chdir = TRUE)$value
  }) %>%
  purrr::transpose() %>%
  purrr::map(dplyr::bind_rows)

