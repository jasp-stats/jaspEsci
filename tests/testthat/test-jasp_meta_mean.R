
test_that("jasp_meta_mean raw data check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_meta_mean"
  data_file <- "tests/testthat/data_gender_math_iat_ma.csv"
  data_file <- "data_gender_math_iat_ma.csv"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$outcome_variable <- c("Pretest", "Posttest")
  options$grouping_variable <- "Condition"
  options$switch <- "from_raw"
  options$effect_size <- "mean_difference"
  options$assume_equal_variance <- TRUE
  options$show_details <- TRUE
  options$show_calculations <- TRUE
  options$show_ratio <- TRUE

  options$evaluate_hypotheses <- TRUE
  options$null_value <- 0
  options$null_boundary <- 0
  options$rope_units <- "raw"


  # graph stuff -- will move to a function
  options$shape_summary_reference <- "circle filled"
  options$shape_summary_comparison <- "circle filled"
  options$shape_summary_difference <- "triangle filled"
  options$shape_summary_unused <- "circle filled"

  options$size_summary_reference <- 4
  options$size_summary_comparison <- 4
  options$size_summary_difference <- 4
  options$size_summary_unused <- 4

  options$color_summary_reference <- "#008DF9"
  options$color_summary_comparison <- "#008DF9"
  options$color_summary_difference <- 'black'
  options$color_summary_unused <- "gray60"

  options$fill_summary_reference <- "#008DF9"
  options$fill_summary_comparison <- "#008DF9"
  options$fill_summary_difference <- "black"
  options$fill_summary_unused <- "gray60"

  options$alpha_summary_reference <- 0
  options$alpha_summary_comparison <- 0
  options$alpha_summary_difference <- 0
  options$alpha_summary_unused <- 0

  options$linetype_summary_reference <- "solid"
  options$linetype_summary_comparison <- "solid"
  options$linetype_summary_difference <- "solid"
  options$linetype_summary_unused <- "solid"

  options$size_interval_reference <- 3
  options$size_interval_comparison <- 3
  options$size_interval_difference <- 3
  options$size_interval_unused <- 3

  options$color_interval_reference <- "black"
  options$color_interval_comparison <- "black"
  options$color_interval_difference <- "black"
  options$color_interval_unused <- "gray30"

  options$alpha_interval_reference <- 0
  options$alpha_interval_comparison <- 0
  options$alpha_interval_difference <- 0
  options$alpha_interval_unused <- 0

  options$fill_error_reference <- "gray75"
  options$fill_error_comparison <- "gray75"
  options$fill_error_difference <- "gray75"
  options$fill_error_unused <- "gray75"

  options$alpha_error_reference <- 0
  options$alpha_error_comparison <- 0
  options$alpha_error_difference <- 0
  options$alpha_error_unused <- 0

  options$shape_raw_reference <- "circle filled"
  options$shape_raw_comparison <- "circle filled"
  options$shape_raw_difference <- "triangle filled"
  options$shape_raw_unused <- "circle filled"

  options$size_raw_reference <- 2
  options$size_raw_comparison <- 2
  options$size_raw_difference <- 2
  options$size_raw_unused <- 2

  options$color_raw_reference <- "#008DF9"
  options$color_raw_comparison <- "#008DF9"
  options$color_raw_difference <- "#E20134"
  options$color_raw_unused <- "gray50"

  options$fill_raw_reference <- "NA"
  options$fill_raw_comparison <- "NA"
  options$fill_raw_difference <- "NA"
  options$fill_raw_unused <- "black"

  options$alpha_raw_reference <- 0
  options$alpha_raw_comparison <- 0
  options$alpha_raw_difference <- 0
  options$alpha_raw_unused <- 0

  # results, storing options
  results <- jaspTools::runAnalysis(analysis_name, data_file, options)
  results$options <- options

  # tests - start testing graphs when they are working from jaspTools
  testthat::expect_snapshot(results$results$overviewTable$data)
  testthat::expect_snapshot(results$results$es_m_differenceTable$data)
  testthat::expect_snapshot(results$results$smdTable$data)
  testthat::expect_snapshot(results$results$es_m_ratioTable$data)
  testthat::expect_snapshot(results$results$heTable$data)
  #testthat::expect_snapshot(results$results$mdiffPlot$data)


})

