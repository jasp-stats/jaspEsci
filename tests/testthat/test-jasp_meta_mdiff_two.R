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



  # graph stuff -- will move to a function
  options$shape_raw_reference <- "square filled"
  options$shape_raw_comparison <- "square filled"
  options$shape_summary_difference <- "triangle filled"
  options$shape_raw_unused <- "circle filled"

  options$color_raw_reference <- "#008DF9"
  options$color_raw_comparison <- "#009F81"
  options$color_summary_difference <- "black"
  options$color_raw_unused <- "gray65"

  options$fill_raw_reference <- "#008DF9"
  options$fill_raw_comparison <- "#009F81"
  options$fill_summary_difference <- "black"
  options$fill_raw_unused <- "gray65"

  options$alpha_raw_reference <- 0
  options$alpha_raw_comparison <- 0
  options$alpha_summary_difference <- 0
  options$alpha_raw_unused <- 0

  options$linetype_raw_reference <- "solid"
  options$linetype_raw_comparison <- "solid"
  options$linetype_summary_difference <- "solid"
  options$linetype_raw_unused <- "solid"

  options$size_interval_reference <- 0.5
  options$size_interval_comparison <- 0.5
  options$size_interval_difference <- 0.5
  options$size_interval_unused <- 0.5

  options$color_interval_reference <- "black"
  options$color_interval_comparison <- "black"
  options$color_interval_difference <- "black"
  options$color_interval_unused <- "gray30"

  options$alpha_interval_reference <- 0
  options$alpha_interval_comparison <- 0
  options$alpha_interval_difference <- 0
  options$alpha_interval_unused <- 0

  options$color_summary_reference <- "#008DF9"
  options$color_summary_comparison <- "#009F81"
  options$color_summary_overall <- 'black'
  options$color_summary_unused <- "gray75"

  options$fill_summary_reference <- "#008DF9"
  options$fill_summary_comparison <- "#009F81"
  options$fill_summary_overall <- "black"
  options$fill_summary_unused <- "gray75"

  options$alpha_summary_reference <- 0
  options$alpha_summary_comparison <- 0
  options$alpha_summary_overall <- 0
  options$alpha_summary_unused <- 0


  # results, storing options
  results <- jaspTools::runAnalysis(analysis_name, data_file, options)
  results$options <- options

  # tests - start testing graphs when they are working from jaspTools
  testthat::expect_snapshot(results$results$meta_raw_dataTable$data)
  testthat::expect_snapshot(results$results$es_metaTable$data)
  testthat::expect_snapshot(results$results$es_heterogeneityTable$data)
  testthat::expect_snapshot(results$results$es_meta_differenceTable)
  #testthat::expect_snapshot(results$results$forest_plot$data)

})

