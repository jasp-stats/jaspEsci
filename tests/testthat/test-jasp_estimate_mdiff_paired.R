
test_that("jasp_estimate_mdiff_two raw data check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_estimate_mdiff_paired"
  data_file <- "tests/testthat/data_self_explain.csv"
  data_file <- "data_self_explain.csv"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$reference_measure <- "Pretest"
  options$comparison_measure <- "Posttest"
  options$switch <- "from_raw"
  options$show_details <- TRUE
  options$show_calculations <- TRUE

  options$evaluate_hypotheses <- TRUE
  options$null_value <- 0
  options$null_boundary <- 0
  options$rope_units <- "raw"

  # results, storing options
  results <- jaspTools::runAnalysis(analysis_name, data_file, options)
  results$options <- options

  # tests - start testing graphs when they are working from jaspTools
  testthat::expect_snapshot(results$results$overviewTable$data)
  testthat::expect_snapshot(results$results$es_m_differenceTable$data)
  testthat::expect_snapshot(results$results$smdTable$data)
  testthat::expect_snapshot(results$results$heTable$data)

  vdiffr::expect_doppelganger(
    "jasp_estimate_mdiff_paired_raw_mdiffPlot",
    results$state$figures[[results$results$mdiffPlot$data]]$obj
  )



})



test_that("jasp_estimate_mdiff_paired summary data check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_estimate_mdiff_paired"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$switch <- "from_summary"
  options$reference_mean <- 10
  options$reference_sd <- 2
  options$n <- 20
  options$comparison_mean <- 12
  options$comparison_sd <- 2.2
  options$correlation <- 0.7
  options$sdiff <- 1.67
  options$conf_level <- 0.95
  options$effect_size <- "mean_difference"
  options$show_details <- TRUE
  options$show_calculations <- TRUE

  options$summary_dirty <- TRUE

  options$evaluate_hypotheses <- TRUE
  options$null_value <- 0
  options$null_boundary <- 0
  options$rope_units <- "raw"

  # results, storing options
  results <- jaspTools::runAnalysis(analysis_name, NULL, options)
  results$options <- options

  # tests - tables and graphs
  testthat::expect_snapshot(results$results$overviewTable$data)
  testthat::expect_snapshot(results$results$es_m_differenceTable$data)
  testthat::expect_snapshot(results$results$smdTable$data)
  testthat::expect_snapshot(results$results$heTable$data)

  vdiffr::expect_doppelganger(
    "jasp_estimate_mdiff_paired_summary_mdiffPlot",
    results$state$figures[[results$results$mdiffPlot$data]]$obj
  )

})

