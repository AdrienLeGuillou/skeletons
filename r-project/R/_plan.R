plan <- drake_plan(
  df_main = dm_main(file_in("in/Tableau avec 110.xlsx")),
  briefing = briefr::brf_describe(
    df_main[!colnames(df_main) %in% c("patient", "med_g")],
    groupings = dplyr::vars(prevenar, pneumo, rappel),
    output_dir = "out"
  ),
  ## md_report = rmarkdown::render(
  ##   knitr_in("Rmd/main_nb.Rmd"),
  ##   output_dir = "out"
  ## ),
  last = TRUE
)
