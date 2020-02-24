dm_main <- function(file_name) {
  # Data import ----

  # Read main table
  df_main <-  readxl::read_excel(file_name, sheet = 1)

  # logicals characters to logicals
  lgcls <- vapply(df_main, alg_is_char_logical, logical(1))
  df_main[lgcls] <- lapply(df_main[lgcls], alg_as_logical_char_logical)

  # Data ingeneering ----

  df_main
}
