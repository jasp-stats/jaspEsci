test_that("jasp_meta_r check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_meta_r"
  data_file <- "tests/testthat/data_mcnamara_r_ma.csv"
  data_file <- "data_mcnamara_r_ma.csv"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$rs <- "r"
  options$ns <- "N"
  options$labels <- "Study"
  options$moderator <- "Instrument_Type"
  options$switch <- "from_raw"
  options$effect_label <- "Skill-Practice Correlation"
  options$random_effects <- "random_effects"
  options$show_details <- TRUE

  options$reported_effect_size <- "r"

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
    "jasp_estimate_meta_r_forest_plot",
    results$state$figures[[results$results$forest_plot$data]]$obj
  )


})

