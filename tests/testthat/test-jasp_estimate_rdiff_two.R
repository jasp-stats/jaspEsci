test_that("jasp_estimate_rdiff_two raw data check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_estimate_rdiff_two"
  data_file <- "tests/testthat/data_campus_involvement.csv"
  data_file <- "data_campus_involvement.csv"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$switch <- "from_raw"
  options$x <- "GPA"
  options$y <- "SWB"
  options$grouping_variable <- "Gender"
  options$show_details <- TRUE
  options$show_line <- TRUE
  options$show_line_CI <- TRUE

  options$evaluate_hypotheses <- TRUE
  options$null_value <- 0
  options$null_boundary <- 0
  options$rope_units <- "raw"

  options$width <- 300
  options$height <- 400
  options$ymin <- -1
  options$ymax <- 1

  # results, storing options
  results <- jaspTools::runAnalysis(analysis_name, data_file, options)
  results$options <- options

  # tests for graphs and tables
  testthat::expect_snapshot(results$results$overviewTable$data)
  testthat::expect_snapshot(results$results$es_r$data)
  testthat::expect_snapshot(results$results$es_r_difference$data)
  testthat::expect_snapshot(results$results$heTable$data)

  vdiffr::expect_doppelganger(
    "jasp_estimate_rdiff_two_raw_scatterplot",
    results$state$figures[[results$results$scatterPlot$data]]$obj
  )

  vdiffr::expect_doppelganger(
    "jasp_estimate_rdiff_two_raw_mdiffplot",
    results$state$figures[[results$results$mdiffPlot$data]]$obj
  )

})


test_that("jasp_estimate_rdiff_two summary data check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_estimate_rdiff_two"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$switch <- "from_summary"
  options$reference_r <- 0.5
  options$comparison_r <- 0.75
  options$reference_n <- 20
  options$comparison_n <- 20
  options$show_details <- TRUE

  options$summary_dirty <- TRUE

  options$evaluate_hypotheses <- TRUE
  options$null_value <- 0
  options$null_boundary <- 0
  options$rope_units <- "raw"

  options$width <- 300
  options$height <- 400
  options$ymin <- -1
  options$ymax <- 1.25

  # results, storing options
  results <- jaspTools::runAnalysis(analysis_name, NULL, options)
  results$options <- options

  # tests for graphs and tables
  testthat::expect_snapshot(results$results$overviewTable$data)
  testthat::expect_snapshot(results$results$es_r$data)
  testthat::expect_snapshot(results$results$es_r_difference$data)
  testthat::expect_snapshot(results$results$heTable$data)

  vdiffr::expect_doppelganger(
    "jasp_estimate_rdiff_two_summary_mdiffplot",
    results$state$figures[[results$results$mdiffPlot$data]]$obj
  )

})

