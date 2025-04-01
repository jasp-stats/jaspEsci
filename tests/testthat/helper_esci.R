options_esci <- function(analysisName) {
  options <- jaspTools::analysisOptions(analysisName)
  options <- esci_add_qml_options(analysisName, options)

  return(options)
}

esci_add_qml_options <- function(analysisName, options) {
  # jaspTools doesn't recognize common QML elements so this function adds the defaults manually
  root <- testthat::test_path(file.path("..", "..", "inst", "qml", "esci"))

  meta_default <- c("MetaAesthetics.qml", "MetaFigureOptions.qml")
  r_default <- c("ScatterplotOptions.qml", "FigureOptions.qml", "HeOptions.qml")
  mdiff_default <- c("ConfLevel.qml", "FigureOptions.qml", "HeOptions.qml")
  pdiff_default <- c("FigureOptions.qml", "HeOptions.qml")
  describe_default <- c("ConfLevel.qml", "ScatterplotOptions.qml")


  file_list <- switch(
    analysisName,
    "jasp_describe" = c(describe_default),
    "jasp_estimate_mdiff_2x2" = c(mdiff_default),
    "jasp_estimate_mdiff_ind_contrast" = c(mdiff_default),
    "jasp_estimate_mdiff_one" = c(mdiff_default),
    "jasp_estimate_mdiff_paired" = c(mdiff_default),
    "jasp_estimate_mdiff_two" = c(mdiff_default),
    "jasp_estimate_pdiff_one" = c(pdiff_default),
    "jasp_estimate_pdiff_paired" = c(pdiff_default),
    "jasp_estimate_r" = c(r_default),
    "jasp_estimate_rdiff_two" = c(r_default),
    "jasp_meta_mdiff_two" = c(meta_default),
    "jasp_meta_mean" = c(meta_default),
    "jasp_meta_pdiff_two" = c(meta_default),
    "jasp_meta_proportion" = c(meta_default),
    "jasp_meta_r" = c(meta_default)
  )

  for (myfilename in file_list) {
    options <- c(
      options,
      jaspTools:::readQML(file.path(root, myfilename))
    )
  }

  return(options)

}
