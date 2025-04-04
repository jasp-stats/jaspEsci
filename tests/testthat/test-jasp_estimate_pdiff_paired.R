test_that("jasp_estimate_pdiff_paired raw data check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_estimate_pdiff_paired"
  data_file <- "tests/testthat/data_proportion_paired_raw_data.csv"
  data_file <- "data_proportion_paired_raw_data.csv"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$reference_measure <- "Before"
  options$comparison_measure <- "After"
  options$switch <- "from_raw"
  options$conf_level <- 0.95
  options$count_NA <- FALSE
  options$show_details <- TRUE

  options$ymin <- "auto"
  options$ymax <- "auto"
  options$width <- 400
  options$height <- 450

  options$evaluate_hypotheses <- TRUE
  options$null_value <- 0
  options$null_boundary <- 0
  options$rope_units <- "raw"


  # results, storing options
  results <- jaspTools::runAnalysis(analysis_name, data_file, options)
  results$options <- options

  # tests - start testing graphs when they are working from jaspTools
  testthat::expect_snapshot(results$results$overviewTable$data)
  testthat::expect_snapshot(results$results$es_proportion_difference$data)
  testthat::expect_snapshot(results$results$heTable$data)
  vdiffr::expect_doppelganger(
    "jasp_estimate_pdiff_paired_raw_mdiffplot",
    results$state$figures[[results$results$mdiffPlot$data]]$obj
  )



})


test_that("jasp_estimate_pdiff_paired summary data check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_estimate_pdiff_paired"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$switch <- "from_summary"
  options$cases_consistent <- 18
  options$cases_inconsistent <- 4
  options$not_cases_inconsistent <- 12
  options$not_cases_inconsistent <- 5
  options$show_details <- TRUE
  options$summary_dirty <- TRUE

  options$ymin <- "auto"
  options$ymax <- "auto"
  options$width <- 400
  options$height <- 450

  options$evaluate_hypotheses <- TRUE
  options$null_value <- 0
  options$null_boundary <- 0
  options$rope_units <- "raw"

  # results, storing options
  results <- jaspTools::runAnalysis(analysis_name, NULL, options)
  results$options <- options

  # tests - tables and graphs
  testthat::expect_snapshot(results$results$overviewTable$data)
  testthat::expect_snapshot(results$results$es_proportion_difference$data)
  testthat::expect_snapshot(results$results$heTable$data)
  vdiffr::expect_doppelganger(
    "jasp_estimate_pdiff_paired_summary_mdiffplot",
    results$state$figures[[results$results$mdiffPlot$data]]$obj
  )


})

