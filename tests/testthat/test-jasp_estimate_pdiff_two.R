test_that("jasp_estimate_pdiff_two raw data check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_estimate_pdiff_two"
  data_file <- "tests/testthat/data_campus_involvement.csv"
  data_file <- "data_campus_involvement.csv"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$outcome_variable <- c("Gender")
  options$grouping_variable <- "CommuterStatus"
  options$switch <- "from_raw"
  options$conf_level <- 0.95
  options$count_NA <- FALSE
  options$show_details <- TRUE
  options$show_chi_square <- TRUE
  options$show_phi <- TRUE
  options$show_ratio <- TRUE

  options$ymin <- "auto"
  options$ymax <- "auto"

  options$evaluate_hypotheses <- TRUE
  options$null_value <- 0
  options$null_boundary <- 0
  options$rope_units <- "raw"

  # results, storing options
  results <- jaspTools::runAnalysis(analysis_name, data_file, options)
  results$options <- options

  # tests - tables and graphs
  testthat::expect_snapshot(results$results$overviewTable$data)
  testthat::expect_snapshot(results$results$es_proportion_difference$data)
  testthat::expect_snapshot(results$results$es_odds_ratio$data)
  testthat::expect_snapshot(results$results$es_phi$data)
  testthat::expect_snapshot(results$results$chi_square$data)
  testthat::expect_snapshot(results$results$heTable$data)

  vdiffr::expect_doppelganger(
    "jasp_estimate_pdiff_two_raw_gender",
    results$state$figures[[results$results$Gender$data]]$obj
  )


})


test_that("jasp_estimate_pdiff_two summary data check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_estimate_pdiff_two"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$switch <- "from_summary"
  options$effect_size <- "mean_difference"
  options$reference_cases <- 20
  options$reference_not_cases <- 80
  options$comparison_cases <- 40
  options$comparison_not_cases <- 60
  options$show_details <- TRUE
  options$show_chi_square <- TRUE
  options$show_phi <- TRUE
  options$show_ratio <- TRUE

  options$summary_dirty <- TRUE

  options$show_details <- TRUE
  options$show_calculations <- TRUE

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
  testthat::expect_snapshot(results$results$es_odds_ratio$data)
  testthat::expect_snapshot(results$results$es_phi$data)
  testthat::expect_snapshot(results$results$heTable$data)

  vdiffr::expect_doppelganger(
    "jasp_estimate_pdiff_two_summary_outcome_variable",
    results$state$figures[[results$results$`Outcome variable`$data]]$obj
  )

})

