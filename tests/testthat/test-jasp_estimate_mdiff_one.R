
test_that("jasp_estimate_mdiff_one raw data check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_estimate_mdiff_one"
  data_file <- "tests/testthat/data_self_explain.csv"
  data_file <- "data_self_explain.csv"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$outcome_variable <- c("Pretest", "Posttest")
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

  # tests - tables and graphs
  testthat::expect_snapshot(results$results$overviewTable$data)
  testthat::expect_snapshot(results$results$smdTable$data)
  testthat::expect_snapshot(results$results$heTable$data)
  testthat::expect_snapshot(results$results$mdiffPlot$data)

  # tests for graphs
  vdiffr::expect_doppelganger(
    "jasp_estimate_mdiff_one_raw_mdiffPlot",
    results$state$figures[[results$results$mdiffPlot$data]]$obj
  )


})



test_that("jasp_estimate_mdiff_one summary data check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_estimate_mdiff_one"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$switch <- "from_summary"
  options$mean <- 10.1
  options$sd <- 3
  options$n <- 20
  options$conf_level <- 0.95
  options$effect_size <- "mean"
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
  testthat::expect_snapshot(results$results$smdTable$data)
  testthat::expect_snapshot(results$results$heTable$data)

  # tests for graphs
  vdiffr::expect_doppelganger(
    "jasp_estimate_mdiff_one_summary_mdiffPlot",
    results$state$figures[[results$results$mdiffPlot$data]]$obj
  )



})

