
test_that("jasp_estimate_mdiff_one raw data check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_estimate_mdiff_one"
  data_file <- "tests/testthat/self_explain.csv"
  data_file <- "self_explain.csv"

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

  # graph stuff -- will move to a function
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


  # results, storing options
  results <- jaspTools::runAnalysis(analysis_name, data_file, options)
  results$options <- options

  # tests - start testing graphs when they are working from jaspTools
  testthat::expect_snapshot(results$results$overviewTable$data)
  testthat::expect_snapshot(results$results$smdTable$data)
  testthat::expect_snapshot(results$results$heTable$data)
  #testthat::expect_snapshot(results$results$mdiffPlot$data)


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

  options$evaluate_hypotheses <- TRUE
  options$null_value <- 0
  options$null_boundary <- 0
  options$rope_units <- "raw"


  # graph stuff -- will move to a function
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


  # results, storing options
  results <- jaspTools::runAnalysis(analysis_name, NULL, options)
  results$options <- options

  # tests - start testing graphs when they are working from jaspTools
  testthat::expect_snapshot(results$results$overviewTable$data)
  testthat::expect_snapshot(results$results$smdTable$data)
  testthat::expect_snapshot(results$results$heTable$data)
  testthat::expect_snapshot(results$results$mdiffPlot$data)

})

