
test_that("jasp_estimate_mdiff_one raw data check tables and figures", {
  analysis_name <- "jasp_estimate_mdiff_one"
  #data_file <- "tests/testthat/self_explain.csv"
  data_file <- "self_explain.csv"

  options <- jaspTools::analysisOptions(analysis_name)


  options$outcome_variable <- c("Pretest", "Posttest")
  options$switch <- "from_raw"
  options$conf_level <- 0.95
  options$effect_size <- "mean"
  options$show_details <- TRUE
  options$show_calculations <- TRUE

  options$evaluate_hypotheses <- TRUE
  options$null_value <- 0
  options$null_boundary <- 0
  options$rope_units <- "raw"

  options$width <- 300
  options$height <- 400

  options$ylab <- "auto"
  options$axis.text.y <- 14
  options$axis.title.y <- 15
  options$ymin <- "auto"
  options$ymax <- "auto"
  options$ybreaks <- "auto"
  options$xlab <- "auto"
  options$axis.text.x <- 14
  options$axis.title.x <- 15
  options$xmin <- "auto"
  options$xmax <- "auto"
  options$xbreaks <- "auto"
  options$simple_contrast_labels <- TRUE

  options$difference_axis_units <- "raw"
  options$difference_axis_breaks <- "auto"
  options$error_scale <- 0.20
  options$error_layout <- "halfeye"
  options$data_layout <- "random"
  options$data_spread <- 0.25
  options$error_nudge <- 0.3

  options$shape_summary <- "circle filled"
  options$size_summary <- 4
  options$color_summary <- "#008DF9"
  options$fill_summary <- "#008DF9"
  options$alpha_summary <- 0


  my_conf_levels <- c(0.90, 0.95, 0.99)
  my_hos <- c(0, 10)


  for (my_conf_level in my_conf_levels) {
    for (my_ho in my_hos) {

            options$conf_level <- my_conf_level
            options$null_value <- my_ho

            results <- jaspTools::runAnalysis(analysis_name, data_file, options)
            results$options <- options

            testthat::expect_snapshot(results$results$overviewTable$data)
            testthat::expect_snapshot(results$results$smdTable$data)
            testthat::expect_snapshot(results$results$heTable$data)
            testthat::expect_snapshot(results$results$mdiffPlot$data)

    }
  }


})



test_that("jasp_estimate_mdiff_one summary data check tables and figures", {
  analysis_name <- "jasp_estimate_mdiff_one"

  options <- jaspTools::analysisOptions(analysis_name)


  options$switch <- "from_summary"
  options$mean <- 10.1
  options$sd <- 3
  options$n <- 20
  options$conf_level <- 0.95
  options$effect_size <- "mean"
  options$show_details <- TRUE
  options$show_calculations <- TRUE

  options$evaluate_hypotheses <- TRUE
  options$null_value <- 0
  options$null_boundary <- 0
  options$rope_units <- "raw"

  options$width <- 300
  options$height <- 400

  options$ylab <- "auto"
  options$axis.text.y <- 14
  options$axis.title.y <- 15
  options$ymin <- "auto"
  options$ymax <- "auto"
  options$ybreaks <- "auto"
  options$xlab <- "auto"
  options$axis.text.x <- 14
  options$axis.title.x <- 15
  options$xmin <- "auto"
  options$xmax <- "auto"
  options$xbreaks <- "auto"
  options$simple_contrast_labels <- TRUE

  options$difference_axis_units <- "raw"
  options$difference_axis_breaks <- "auto"
  options$error_scale <- 0.20
  options$error_layout <- "halfeye"
  options$data_layout <- "random"
  options$data_spread <- 0.25
  options$error_nudge <- 0.3

  options$shape_summary <- "circle filled"
  options$size_summary <- 4
  options$color_summary <- "#008DF9"
  options$fill_summary <- "#008DF9"
  options$alpha_summary <- 0

  my_conf_levels <- c(0.90, 0.95, 0.99)
  my_means <- c(10.1, 20.1)
  my_sds <- c(3, 5, 10)
  my_ns <- c(20, 5, 100)
  my_hos <- c(0, 10)

  my_means <- c(10.1)
  my_sds <- c(3)
  my_ns <- c(20)
  my_hos <- c(0)


  for (my_conf_level in my_conf_levels) {
    for (my_ho in my_hos) {
      for (my_mean in my_means) {
        for (my_sd in my_sds) {
          for (my_n in my_ns) {

            options$conf_level <- my_conf_level
            options$mean <- my_mean
            options$sd <- my_sd
            options$n <- my_n
            options$null_value <- my_ho

            results <- jaspTools::runAnalysis(analysis_name, NULL, options)
            results$properties <- options

            testthat::expect_snapshot(results$results$overviewTable$data)
            testthat::expect_snapshot(results$results$smdTable$data)
            testthat::expect_snapshot(results$results$heTable$data)
            testthat::expect_snapshot(results$results$mdiffPlot$data)
          }
        }
      }
    }
  }

})

