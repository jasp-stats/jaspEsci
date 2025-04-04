
test_that("jasp_describe check tables and figures", {
  # setup data and options
  analysis_name <- "jasp_describe"
  data_file <- "tests/testthat/data_self_explain.csv"
  data_file <- "data_self_explain.csv"

  options <- options_esci(analysis_name)

  # analysis parameters
  options$outcome_variable <- "Posttest"
  options$show_details <- TRUE

  # graph stuff -- will move to a function
  options$color <- 'black'
  options$fill_regular <- "#008DF9"
  options$fill_highlighted <- "#E20134"

  my_conf_levels <- c(0.90, 0.95, 0.99)

  for (my_conf_level in my_conf_levels) {

    options$conf_level <- my_conf_level

    # results, storing options
    results <- jaspTools::runAnalysis(analysis_name, data_file, options)
    results$options <- options

    # tests - for tables
    testthat::expect_snapshot(results$results$overviewTable$data)
  }

  # tests for graphs
  suppressWarnings(
    suppressMessages(
      vdiffr::expect_doppelganger(
        "jasp_estimate_describe_histogram",
        results$state$figures[[results$results$histogram$data]]$obj
      )
    )
  )

  suppressWarnings(
    suppressMessages(
      vdiffr::expect_doppelganger(
        "jasp_estimate_describe_dotplot",
        results$state$figures[[results$results$dotplot$data]]$obj
      )
    )
  )


})

