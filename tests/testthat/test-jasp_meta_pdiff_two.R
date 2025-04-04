test_that("jasp_meta_pdiff_two check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_meta_pdiff_two"
  data_file <- "tests/testthat/data_power_perspective.csv"
  data_file <- "data_power_perspective.csv"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$reference_cases <- "control_egocentric"
  options$reference_ns <- "control_sample_size"
  options$comparison_cases <- "power_egocentric"
  options$comparison_ns <- "power_sample_size"
  options$labels <- "studies"
  options$moderator <- "setting"
  options$switch <- "from_raw"
  options$effect_label <- "Proportion ego-centric"
  options$random_effects <- "random_effects"
  options$show_details <- TRUE

  options$reported_effect_size <- "RD"

  #graph options
  options$size_interval_reference <- 0.5
  options$size_interval_comparison <- 0.5
  options$size_interval_difference <- 0.5
  options$size_interval_unused <- 0.5

  # results, storing options
  results <- jaspTools::runAnalysis(analysis_name, data_file, options)
  results$options <- options

  # tests - tables and graphs
  testthat::expect_snapshot(results$results$meta_raw_dataTable$data)
  testthat::expect_snapshot(results$results$es_metaTable$data)
  testthat::expect_snapshot(results$results$es_heterogeneityTable$data)
  testthat::expect_snapshot(results$results$es_meta_differenceTable)
  vdiffr::expect_doppelganger(
    "jasp_estimate_meta_pdiff_two_forest_plot",
    results$state$figures[[results$results$forest_plot$data]]$obj
  )


})

