test_that("jasp_estimate_mdiff_2x2 raw data bs design check tables and figures", {
  #shouldn't need this
  source("helper_esci.R")

  # setup data and options
  analysis_name <- "jasp_estimate_mdiff_2x2"
  data_file <- "tests/testthat/data_self_explain.csv"
  data_file <- "data_self_explain.csv"
  options <- options_esci(analysis_name)

  # analysis parameters
  options$switch <- "from_raw"
  options$design <- "fully_between"
  options$outcome_variable <- "Posttest"
  options$grouping_variable_A <- "Condition"
  options$grouping_variable_B <- "VarB"
  options$outcome_variable_name_bs <- "Test score"

  options$show_details <- FALSE
  options$show_interaction_plot <- TRUE
  options$show_CI <- TRUE

  options$null_boundary <- 0
  options$evaluate_hypotheses <- TRUE

  options$width <- 700
  options$height <- 400
  options$error_nudge <- 0.5
  options$data_spread <- 0.2
  options$error_scale <- 0.25


  conf_levels <- c(0.95)
  table_names <- c(
    "overviewTable",
    "es_m_differenceTable",
    "smdTable",
    "heTable"
  )

  for (my_conf_level in conf_levels) {
    options$conf_level <- my_conf_level


    results <- jaspTools::runAnalysis(analysis_name, data_file, options)
    results$options <- options

    for (mytable in table_names) {
      testthat::expect_snapshot(results[["results"]][[mytable]][["data"]])
    }

  }

  # tests for graphs
  suppressWarnings(
    suppressMessages(
      vdiffr::expect_doppelganger(
        "jasp_estimate_mdiff_2x2_raw_bs_main_effect_A",
        results$state$figures[[results$results$main_effect_A$data]]$obj
      )
    )
  )

  suppressWarnings(
    suppressMessages(
      vdiffr::expect_doppelganger(
        "jasp_estimate_mdiff_2x2_raw_bs_main_effect_B",
        results$state$figures[[results$results$main_effect_B$data]]$obj
      )
    )
  )

  suppressWarnings(
    suppressMessages(
      vdiffr::expect_doppelganger(
        "jasp_estimate_mdiff_2x2_raw_bs_main_interaction",
        results$state$figures[[results$results$interaction$data]]$obj
      )
    )
  )

  suppressWarnings(
    suppressMessages(
      vdiffr::expect_doppelganger(
        "jasp_estimate_mdiff_2x2_raw_bs_interaction_plot",
        results$state$figures[[results$results$interaction_plot$data]]$obj
      )
    )
  )

})


test_that("jasp_estimate_mdiff_2x2 raw data mixed design check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_estimate_mdiff_2x2"
  data_file <- "tests/testthat/data_self_explain.csv"
  data_file <- "data_self_explain.csv"
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
  options$show_interaction_plot <- TRUE
  options$show_CI <- TRUE

  options$null_boundary <- 0
  options$evaluate_hypotheses <- TRUE

  options$width <- 700
  options$height <- 400
  options$error_nudge <- 0.5
  options$data_spread <- 0.2
  options$error_scale <- 0.25

  conf_levels <- c(0.95)
  table_names <- c(
    "overviewTable",
    "es_m_differenceTable",
    "smdTable",
    "heTable"
  )

  for (my_conf_level in conf_levels) {
    options$conf_level <- my_conf_level

    results <- jaspTools::runAnalysis(analysis_name, data_file, options)
    results$options <- options

    for (mytable in table_names) {
      testthat::expect_snapshot(results[["results"]][[mytable]][["data"]])
    }

  }

  # tests for graphs
  suppressWarnings(
    suppressMessages(
      vdiffr::expect_doppelganger(
        "jasp_estimate_mdiff_2x2_raw_mixed_main_effect_A",
        results$state$figures[[results$results$main_effect_A$data]]$obj
      )
    )
  )

  suppressWarnings(
    suppressMessages(
      vdiffr::expect_doppelganger(
        "jasp_estimate_mdiff_2x2_raw_mixed_main_effect_B",
        results$state$figures[[results$results$main_effect_B$data]]$obj
      )
    )
  )

  suppressWarnings(
    suppressMessages(
      vdiffr::expect_doppelganger(
        "jasp_estimate_mdiff_2x2_raw_mixed_main_interaction",
        results$state$figures[[results$results$interaction$data]]$obj
      )
    )
  )

  suppressWarnings(
    suppressMessages(
      vdiffr::expect_doppelganger(
        "jasp_estimate_mdiff_2x2_raw_mixed_interaction_plot",
        results$state$figures[[results$results$interaction_plot$data]]$obj
      )
    )
  )

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


  conf_levels <- c(0.95)
  table_names <- c(
    "overviewTable",
    "es_m_differenceTable",
    "smdTable",
    "heTable"
  )

  for (my_conf_level in conf_levels) {
    options$conf_level <- my_conf_level


    results <- jaspTools::runAnalysis(analysis_name, NULL, options)
    results$options <- options

    for (mytable in table_names) {
      testthat::expect_snapshot(results[["results"]][[mytable]][["data"]])
    }

  }

  # tests for graphs
  suppressWarnings(
    suppressMessages(
      vdiffr::expect_doppelganger(
        "jasp_estimate_mdiff_2x2_summary_bs_main_effect_A",
        results$state$figures[[results$results$main_effect_A$data]]$obj
      )
    )
  )

  suppressWarnings(
    suppressMessages(
      vdiffr::expect_doppelganger(
        "jasp_estimate_mdiff_2x2_summary_bs_main_effect_B",
        results$state$figures[[results$results$main_effect_B$data]]$obj
      )
    )
  )

  suppressWarnings(
    suppressMessages(
      vdiffr::expect_doppelganger(
        "jasp_estimate_mdiff_2x2_summary_bs_main_interaction",
        results$state$figures[[results$results$interaction$data]]$obj
      )
    )
  )

  suppressWarnings(
    suppressMessages(
      vdiffr::expect_doppelganger(
        "jasp_estimate_mdiff_2x2_summary_bs_interaction_plot",
        results$state$figures[[results$results$interaction_plot$data]]$obj
      )
    )
  )



})

