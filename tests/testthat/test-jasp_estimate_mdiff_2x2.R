test_that("jasp_estimate_mdiff_2x2 raw data bs design check tables and figures", {
  #shouldn't need this
  source("helper_esci.R")


  # setup data and options
  analysis_name <- "jasp_estimate_mdiff_2x2"
  data_file <- "tests/testthat/self_explain.csv"
  data_file <- "self_explain.csv"
  options <- options_esci(analysis_name)

  # analysis parameters
  options$switch <- "from_raw"
  options$design <- "fully_between"
  options$outcome_variable <- "Posttest"
  options$grouping_variable_A <- "Condition"
  options$grouping_variable_B <- "VarB"
  options$outcome_variable_name_bs <- "Test score"

  options$show_details <- FALSE
  options$show_interaction_plot <- FALSE
  options$show_CI <- FALSE
  options$null_boundary <- 0
  options$evaluate_hypotheses <- TRUE

  options$width <- 700
  options$height <- 400
  options$error_nudge <- 0.5
  options$data_spread <- 0.2
  options$error_scale <- 0.25


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

  conf_levels <- c(0.90, 0.95, 0.99)
  table_names <- c(
    "overviewTable",
    "es_m_differenceTable",
    "smdTable",
    "heTable" #,
    #main_effect_A",
    #"main_effect_B",
    #"interaction",
    #"interaction_plot"
  )

  for (my_conf_level in conf_levels) {
    options$conf_level <- my_conf_level


    results <- jaspTools::runAnalysis(analysis_name, data_file, options)
    results$options <- options

    for (mytable in table_names) {
      testthat::expect_snapshot(results[["results"]][[mytable]][["data"]])
    }

  }



})


test_that("jasp_estimate_mdiff_2x2 raw data mixed design check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_estimate_mdiff_2x2"
  data_file <- "tests/testthat/self_explain.csv"
  data_file <- "self_explain.csv"
  options <- options_esci(analysis_name)

  # analysis parameters
  options$switch <- "from_raw"
  options$design <- "mixed"
  options$outcome_variable_level1 <- "Pretest"
  options$outcome_variable_level2 <- "Posttest"
  options$grouping_variable <- "Condition"
  options$repeated_measures_name <- "Time"
  options$outcome_variable_name <- "Test score"

  options$show_details <- FALSE
  options$show_interaction_plot <- FALSE
  options$show_CI <- FALSE
  options$null_boundary <- 0
  options$evaluate_hypotheses <- TRUE

  options$width <- 700
  options$height <- 400
  options$error_nudge <- 0.5
  options$data_spread <- 0.2
  options$error_scale <- 0.25


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

  conf_levels <- c(0.90, 0.95, 0.99)
  table_names <- c(
    "overviewTable",
    "es_m_differenceTable",
    "smdTable",
    "heTable" #,
    #main_effect_A",
    #"main_effect_B",
    #"interaction",
    #"interaction_plot"
  )

  for (my_conf_level in conf_levels) {
    options$conf_level <- my_conf_level


    results <- jaspTools::runAnalysis(analysis_name, data_file, options)
    results$options <- options

    for (mytable in table_names) {
      testthat::expect_snapshot(results[["results"]][[mytable]][["data"]])
    }

  }



})


test_that("jasp_estimate_mdiff_2x2 summary data check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_estimate_mdiff_2x2"

  #options <- jaspTools::analysisOptions(analysis_name)
  options <- options_esci(analysis_name)

  # analysis parameters
  options$switch <- "from_summary"
  options$assume_equal_variance <- TRUE
  options$show_details <- TRUE
  options$show_interaction_plot <- TRUE
  options$show_CI <- TRUE
  options$null_boundary <- 0
  options$evaluate_hypotheses <- TRUE

  options$summary_dirty <- TRUE

  options$width <- 700
  options$height <- 400
  options$error_nudge <- 0.5
  options$data_spread <- 0.2
  options$error_scale <- 0.25


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

  conf_levels <- c(0.90, 0.95, 0.99)
  table_names <- c(
    "overviewTable",
    "es_m_differenceTable",
    "smdTable",
    "heTable" #,
    # "main_effect_A",
    # "main_effect_B",
    # "interaction",
    # "interaction_plot"
  )

  for (my_conf_level in conf_levels) {
    options$conf_level <- my_conf_level


    results <- jaspTools::runAnalysis(analysis_name, NULL, options)
    results$options <- options

    for (mytable in table_names) {
      testthat::expect_snapshot(results[["results"]][[mytable]][["data"]])
    }

  }



})


# test_that("Tables matches for raw 2x2 mixed", {
#   analysis_name <- "jasp_estimate_mdiff_2x2"
#
#   options <- jaspTools::analysisOptions(analysis_name)
#   options$outcome_variable_level1 <- "Pretest"
#   options$outcome_variable_level2 <- "Posttest"
#   options$grouping_variable <- "Condition"
#   options$design <- "mixed"
#   options$switch <- "from_raw"
#
#   options$null_boundary <- 0
#   options$evaluate_hypotheses <- FALSE
#
#
#   #results <- jaspTools::runAnalysis(analysis_name, "tests/testthat/self_explain.csv", options)
#
#   results <- jaspTools::runAnalysis(analysis_name, "self_explain.csv", options)
#
#   table_names <- c("overviewTable", "smdTable", "es_m_differenceTable")
#
#   for (mytable in table_names) {
#     testthat::expect_snapshot(results[["results"]][[mytable]][["data"]])
#   }
#
#
# })
#
