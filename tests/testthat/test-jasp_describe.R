
test_that("jasp_describe check tables and figures", {
  analysis_name <- "jasp_describe"
  #data_file <- "tests/testthat/self_explain.csv"
  data_file <- "self_explain.csv"

  options <- jaspTools::analysisOptions(analysis_name)

  options$outcome_variable <- "Posttest"
  options$show_details <- TRUE
  options$mark_mean <- FALSE
  options$mark_median <- FALSE
  options$mark_sd <- FALSE
  options$mark_quartiles <- FALSE
  options$mark_z_lines <- TRUE
  options$mark_percentile <- 0
  options$color <- 'black'
  options$fill_regular <- "#008DF9"
  options$fill_highlighted <- "#E20134"
  options$conf_level <- 0.95
  options$plotHeight <- 500
  options$plotWidth <- 400
  options$sp_plot_width <- 650
  options$sp_plot_height <- 650
  options$histogram_bins <- 12
  options$sp_ylab <- "auto"
  options$sp_axis.text.y <- 14
  options$sp_axis.title.y <- 15
  options$sp_ymin <- "auto"
  options$sp_ymax <- "auto"
  options$sp_ybreaks <- "auto"
  options$sp_xlab <- "auto"
  options$sp_axis.text.x <- 14
  options$sp_axis.title.x <- 15
  options$sp_xmin <- "auto"
  options$sp_xmax <- "auto"
  options$sp_xbreaks <- "auto"
  options$show_mean_lines <- FALSE
  options$plot_as_z <- FALSE
  options$show_r <- FALSE

  my_conf_levels <- c(0.90, 0.95, 0.99)

  for (my_conf_level in my_conf_levels) {

    results <- jaspTools::runAnalysis(analysis_name, data_file, options)
    results$options <- options

    testthat::expect_snapshot(results$results$overviewTable$data)
    testthat::expect_snapshot(results$results$histogram$data)
    testthat::expect_snapshot(results$results$dotplot$data)
  }

})

