test_that("jasp_meta_mdiff_two raw data check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_meta_mdiff_two"
  data_file <- "tests/testthat/data_gender_math_iat_ma.csv"
  data_file <- "data_gender_math_iat_ma.csv"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$reference_means <- "M Male"
  options$reference_sds <- "s Male"
  options$reference_ns <- "n Male"
  options$comparison_means <- "M Female"
  options$comparison_sds <- "s Female"
  options$comparison_ns <- "n Female"
  options$labels <- "Location"
  options$moderator <- "USAorNot"
  options$switch <- "from_raw"
  options$effect_label <- "IAT Score"
  options$reference_mean <- 0.2
  options$reported_effect_size <- "mean_difference"
  options$random_effects <- "random_effects"
  options$show_details <- TRUE

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
    "jasp_estimate_meta_mdiff_two_forest_plot",
    results$state$figures[[results$results$forest_plot$data]]$obj
  )

})

