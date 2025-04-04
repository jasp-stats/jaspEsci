options_esci <- function(analysisName) {
  options <- jaspTools::analysisOptions(analysisName)
  options <- esci_add_qml_options(analysisName, options)

  return(options)
}

esci_add_qml_options <- function(analysisName, options) {
  # jaspTools doesn't recognize common QML elements so this function adds the defaults manually
  root <- testthat::test_path(file.path("..", "..", "inst", "qml", "esci"))

  meta_default <- c("ConfLevel.qml", "MetaAesthetics.qml", "MetaFigureOptions.qml")
  r_default <- c("ConfLevel.qml", "ScatterplotOptions.qml", "FigureOptions.qml", "HeOptions.qml")
  mdiff_default <- c("ConfLevel.qml", "FigureOptions.qml", "HeOptions.qml")
  pdiff_default <- c("ConfLevel.qml", "FigureOptions.qml", "HeOptions.qml")
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
    "jasp_estimate_pdiff_two" = c(pdiff_default),
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

  # meta-analysis options
  options$shape_raw_reference <- "square filled"
  options$shape_raw_comparison <- "square filled"
  options$shape_summary_difference <- "triangle filled"
  options$shape_raw_unused <- "circle filled"

  options$color_raw_reference <- "#008DF9"
  options$color_raw_comparison <- "#009F81"
  options$color_summary_difference <- "black"
  options$color_raw_unused <- "gray65"

  options$fill_raw_reference <- "#008DF9"
  options$fill_raw_comparison <- "#009F81"
  options$fill_summary_difference <- "black"
  options$fill_raw_unused <- "gray65"

  options$alpha_raw_reference <- 0
  options$alpha_raw_comparison <- 0
  options$alpha_summary_difference <- 0
  options$alpha_raw_unused <- 0

  options$linetype_raw_reference <- "solid"
  options$linetype_raw_comparison <- "solid"
  options$linetype_summary_difference <- "solid"
  options$linetype_raw_unused <- "solid"

  options$size_interval_reference <- 0.5
  options$size_interval_comparison <- 0.5
  options$size_interval_difference <- 0.5
  options$size_interval_unused <- 0.5

  options$color_interval_reference <- "black"
  options$color_interval_comparison <- "black"
  options$color_interval_difference <- "black"
  options$color_interval_unused <- "gray30"

  options$alpha_interval_reference <- 0
  options$alpha_interval_comparison <- 0
  options$alpha_interval_difference <- 0
  options$alpha_interval_unused <- 0

  options$color_summary_reference <- "#008DF9"
  options$color_summary_comparison <- "#009F81"
  options$color_summary_overall <- 'black'
  options$color_summary_unused <- "gray75"

  options$fill_summary_reference <- "#008DF9"
  options$fill_summary_comparison <- "#009F81"
  options$fill_summary_overall <- "black"
  options$fill_summary_unused <- "gray75"

  options$alpha_summary_reference <- 0
  options$alpha_summary_comparison <- 0
  options$alpha_summary_overall <- 0
  options$alpha_summary_unused <- 0

  #extra scatterplot options
  options$sp_shape_raw_reference <- "circle filled"
  options$sp_size_raw_reference <- 3
  options$sp_color_raw_reference <- "black"
  options$sp_fill_raw_reference <- "#008DF9"
  options$sp_alpha_raw_reference <- .75

  options$sp_shape_raw_comparison <- "circle filled"
  options$sp_size_raw_comparison <- 3
  options$sp_color_raw_comparison <- "black"
  options$sp_fill_raw_comparison <- "#009F81"
  options$sp_alpha_raw_comparison <- .75

  options$sp_shape_raw_unused <- "circle filled"
  options$sp_size_raw_unused <- 3
  options$sp_color_raw_unused <- "black"
  options$sp_fill_raw_unused <- "#009F81"
  options$sp_alpha_raw_unused <- .75

  options$sp_linetype_summary_comparison <- "solid"
  options$sp_size_summary_comparison <- 2
  options$sp_color_summary_comparison <- '#009F81'


  #scatterplot options
  options$sp_linetype_summary_reference <- "solid"
  options$ssp_linetype_PI_reference <- "dotted"
  options$sp_linetype_residual_reference <- "dashed"
  options$sp_alpha_summary_comparison <- 0.75

  options$sp_size_summary_reference <- 2
  options$sp_size_PI_reference <- 2
  options$sp_size_residual_reference <- 1

  options$sp_color_summary_reference <- '#008DF9'
  options$sp_color_PI_reference <- '#E20134'
  options$sp_color_residual_reference <-  '#E20134'

  options$sp_alpha_summary_reference <- .75
  options$sp_alpha_PI_reference <- 0
  options$sp_alpha_residual_reference <-  0

  options$sp_prediction_label <- 5
  options$sp_prediction_color <- "#E20134"

  options$sp_linetype_ref <- "dotted"
  options$sp_linetype_PI <- "solid"
  options$sp_linetype_CI <- "solid"

  options$sp_size_ref <- 1
  options$sp_size_PI <- 2
  options$sp_size_CI <- 4

  options$sp_color_ref <- "gray60"
  options$sp_color_PI <- "#E20134"
  options$sp_color_CI <- '#008DF9'

  options$sp_alpha_ref <- 0
  options$sp_alpha_PI <- 0
  options$sp_alpha_CI <- 0

  options$linetype_summary <- "solid"
  options$size_interval <- 3
  options$color_interval <- "black"
  options$alpha_interval <- 0

  #aesthetics summary options
  options$shape_summary <- "circle filled"
  options$size_summary <- 4
  options$color_summary <- "#008DF9"
  options$fill_summary <- "#008DF9"
  options$alpha_summary <- 0
  options$linetype_summary <- "solid"
  options$size_interval <- 3
  options$color_interval <- 'black'
  options$alpha_interval <- 0
  options$fill_error <- "gray75"
  options$alpha_error <- 0
  options$shape_raw <- "circle filled"
  options$size_raw <- 2
  options$color_raw <- "#008DF9"
  options$fill_raw <- "NA"
  options$alpha_raw <- 0


  #aesthetics by group options
  options$shape_summary_reference <- "circle filled"
  options$shape_summary_comparison <- "circle filled"
  options$shape_summary_difference <- "triangle filled"
  options$shape_summary_unused <- "circle filled"

  options$size_summary_reference <- 4
  options$size_summary_comparison <- 4
  options$size_summary_difference <- 4
  options$size_summary_unused <- 4

  options$color_summary_reference <- "#008DF9"
  options$color_summary_comparison <- "#008DF9"
  options$color_summary_difference <- 'black'
  options$color_summary_unused <- "gray60"

  options$fill_summary_reference <- "#008DF9"
  options$fill_summary_comparison <- "#008DF9"
  options$fill_summary_difference <- "black"
  options$fill_summary_unused <- "gray60"

  options$alpha_summary_reference <- 0
  options$alpha_summary_comparison <- 0
  options$alpha_summary_difference <- 0
  options$alpha_summary_unused <- 0

  options$linetype_summary_reference <- "solid"
  options$linetype_summary_comparison <- "solid"
  options$linetype_summary_difference <- "solid"
  options$linetype_summary_unused <- "solid"

  options$size_interval_reference <- 3
  options$size_interval_comparison <- 3
  options$size_interval_difference <- 3
  options$size_interval_unused <- 3

  options$color_interval_reference <- "black"
  options$color_interval_comparison <- "black"
  options$color_interval_difference <- "black"
  options$color_interval_unused <- "gray30"

  options$alpha_interval_reference <- 0
  options$alpha_interval_comparison <- 0
  options$alpha_interval_difference <- 0
  options$alpha_interval_unused <- 0

  options$fill_error_reference <- "gray75"
  options$fill_error_comparison <- "gray75"
  options$fill_error_difference <- "gray75"
  options$fill_error_unused <- "gray75"

  options$alpha_error_reference <- 0
  options$alpha_error_comparison <- 0
  options$alpha_error_difference <- 0
  options$alpha_error_unused <- 0

  options$shape_raw_reference <- "circle filled"
  options$shape_raw_comparison <- "circle filled"
  options$shape_raw_difference <- "triangle filled"
  options$shape_raw_unused <- "circle filled"

  options$size_raw_reference <- 2
  options$size_raw_comparison <- 2
  options$size_raw_difference <- 2
  options$size_raw_unused <- 2

  options$color_raw_reference <- "#008DF9"
  options$color_raw_comparison <- "#008DF9"
  options$color_raw_difference <- "#E20134"
  options$color_raw_unused <- "gray50"

  options$fill_raw_reference <- "NA"
  options$fill_raw_comparison <- "NA"
  options$fill_raw_difference <- "NA"
  options$fill_raw_unused <- "black"

  options$alpha_raw_reference <- 0
  options$alpha_raw_comparison <- 0
  options$alpha_raw_difference <- 0
  options$alpha_raw_unused <- 0

  return(options)

}
