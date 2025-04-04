test_that("jasp_estimate_r raw data check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_estimate_r"
  data_file <- "tests/testthat/data_campus_involvement.csv"
  data_file <- "data_campus_involvement.csv"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$switch <- "from_raw"
  options$x <- "GPA"
  options$y <- "SWB"
  options$show_details <- TRUE
  options$do_regression <- TRUE
  options$predict_from_x <- 3.351
  options$show_line <- TRUE
  options$show_line_CI <- TRUE
  options$show_mean_lines <- TRUE
  options$show_PI <- TRUE
  options$show_r <- TRUE
  options$show_residuals <- TRUE


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

  # tests - start testing graphs when they are working from jaspTools
  testthat::expect_snapshot(results$results$overviewTable$data)
  testthat::expect_snapshot(results$results$es_r$data)
  testthat::expect_snapshot(results$results$regression$data)
  testthat::expect_snapshot(results$results$heTable$data)

  vdiffr::expect_doppelganger(
    "jasp_estimate_r_raw_scatterplot",
    results$state$figures[[results$results$scatterPlot$data]]$obj
  )

  vdiffr::expect_doppelganger(
    "jasp_estimate_r_raw_mdiffplot",
    results$state$figures[[results$results$mdiffPlot$data]]$obj
  )


})


test_that("jasp_estimate_r summary data check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_estimate_r"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$switch <- "from_summary"
  options$r <- 0.5
  options$n <- 20
  options$show_details <- TRUE

  options$summary_dirty <- TRUE

  options$evaluate_hypotheses <- TRUE
  options$null_value <- 0
  options$null_boundary <- 0
  options$rope_units <- "raw"

  # results, storing options
  results <- jaspTools::runAnalysis(analysis_name, NULL, options)
  results$options <- options

  # tests - start testing graphs when they are working from jaspTools
  testthat::expect_snapshot(results$results$overviewTable$data)
  testthat::expect_snapshot(results$results$es_r$data)
  testthat::expect_snapshot(results$results$heTable$data)

  vdiffr::expect_doppelganger(
    "jasp_estimate_r_summary_mdiffplot",
    results$state$figures[[results$results$mdiffPlot$data]]$obj
  )

})

