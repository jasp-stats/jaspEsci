
test_that("jasp_estimate_mdiff_ind_contrast raw data check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_estimate_mdiff_ind_contrast"
  data_file <- "tests/testthat/data_self_explain.csv"
  data_file <- "data_self_explain.csv"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$outcome_variable <- c("Pretest", "Posttest")
  options$grouping_variable <- "Condition"
  options$reference_labels <- "Self-Explain"
  options$comparison_labels <- "More Practice"
  options$switch <- "from_raw"
  options$effect_size <- "mean_difference"
  options$assume_equal_variance <- TRUE

  options$show_details <- TRUE

  options$evaluate_hypotheses <- TRUE
  options$null_value <- 0
  options$null_boundary <- 0
  options$rope_units <- "raw"

  options$simple_contrast_labels <- TRUE
  options$width <- 550
  options$height <- 450
  options$error_nudge <- 0.5
  options$data_spread <- 0.2
  options$error_scale <- 0.25

  # results, storing options
  results <- jaspTools::runAnalysis(analysis_name, data_file, options)
  results$options <- options

  # tests - tables and graphs
  testthat::expect_snapshot(results$results$overviewTable$data)
  testthat::expect_snapshot(results$results$es_m_differenceTable$data)
  testthat::expect_snapshot(results$results$smdTable$data)
  testthat::expect_snapshot(results$results$heTable$data)

  # tests for graphs
  vdiffr::expect_doppelganger(
    "jasp_estimate_mdiff_ind_contrast_summary_pretest",
    results$state$figures[[results$results$Pretest$data]]$obj
  )

  vdiffr::expect_doppelganger(
    "jasp_estimate_mdiff_ind_contrast_summary_posttest",
    results$state$figures[[results$results$Posttest$data]]$obj
  )


})



test_that("jasp_estimate_mdiff_ind_contrast summary data check tables and figures", {
  # not working yet... no results tables returned!

  # setup data and options
  analysis_name <- "jasp_estimate_mdiff_ind_contrast"
  data_file <- "tests/testthat/data_halagappa.csv"
  data_file <- "data_halagappa.csv"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$switch <- "from_summary"
  options$effect_size <- "mean_difference"
  options$means <- "Mean"
  options$sds <- "SD"
  options$ns <- "n"
  options$reference_labels <- "NFree10"
  options$comparison_labels <- "ADiet10"
  options$assume_equal_variance <- TRUE

  options$show_details <- TRUE
  options$summary_dirty <- TRUE

  options$evaluate_hypotheses <- TRUE
  options$null_value <- 0
  options$null_boundary <- 0
  options$rope_units <- "raw"

  options$simple_contrast_labels <- TRUE
  options$width <- 550
  options$height <- 450
  options$error_nudge <- 0.5
  options$data_spread <- 0.2
  options$error_scale <- 0.25

  # results, storing options
  results <- jaspTools::runAnalysis(analysis_name, data_file, options)
  results$options <- options

  # tests - start testing graphs when they are working from jaspTools
  testthat::expect_snapshot(results$results$overviewTable$data)
  testthat::expect_snapshot(results$results$es_m_differenceTable$data)
  testthat::expect_snapshot(results$results$smdTable$data)
  testthat::expect_snapshot(results$results$heTable$data)

  # # tests for graphs
  # vdiffr::expect_doppelganger(
  #   "jasp_estimate_mdiff_ind_contrast_summary_pretest",
  #   results$state$figures[[results$results$Pretest$data]]$obj
  # )
  #
  # vdiffr::expect_doppelganger(
  #   "jasp_estimate_mdiff_ind_contrast_summary_posttest",
  #   results$state$figures[[results$results$Posttest$data]]$obj
  # )

})

