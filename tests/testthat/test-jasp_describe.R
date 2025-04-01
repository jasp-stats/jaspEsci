
test_that("jasp_describe check tables and figures", {
  analysis_name <- "jasp_describe"
  data_file <- "tests/testthat/self_explain.csv"
  data_file <- "self_explain.csv"

  options <- options_esci(analysis_name)

  options$outcome_variable <- "Posttest"
  options$show_details <- TRUE

  options$color <- 'black'
  options$fill_regular <- "#008DF9"
  options$fill_highlighted <- "#E20134"

  my_conf_levels <- c(0.90, 0.95, 0.99)

  for (my_conf_level in my_conf_levels) {

    results <- jaspTools::runAnalysis(analysis_name, data_file, options)
    results$options <- options

    testthat::expect_snapshot(results$results$overviewTable$data)
    testthat::expect_snapshot(results$results$histogram$data)
    testthat::expect_snapshot(results$results$dotplot$data)
  }

})

