
test_that("jasp_estimate_mdiff_two raw data check tables and figures", {
  analysis_name <- "jasp_estimate_mdiff_two"
  data_file <- "tests/testthat/self_explain.csv"
  data_file <- "self_explain.csv"

  options <- options_esci(analysis_name)

  options$outcome_variable <- c("Pretest", "Posttest")
  options$grouping_variable <- "Condition"
  options$switch <- "from_raw"
  options$assume_equal_variance <- TRUE
  options$show_details <- TRUE
  options$show_calculations <- TRUE

  options$evaluate_hypotheses <- TRUE
  options$null_value <- 0
  options$null_boundary <- 0
  options$rope_units <- "raw"

  options$shape_summary <- "circle filled"
  options$size_summary <- 4
  options$color_summary <- "#008DF9"
  options$fill_summary <- "#008DF9"
  options$alpha_summary <- 0
  options$linetype_summary <- "solid"
  options$size_interval <- 3
  options$color_interval <- 'black'
  options$alpha_interval <- 0
  options$fill_error <- "gray75"
  options$alpha_error <- 0
  options$shape_raw <- "circle filled"
  options$size_raw <- 2
  options$color_raw <- "#008DF9"
  options$fill_raw <- "NA"
  options$alpha_raw <- 0


  my_conf_levels <- c(0.90, 0.95, 0.99)
  my_hos <- c(0)


  for (my_conf_level in my_conf_levels) {
    for (my_ho in my_hos) {

            options$conf_level <- my_conf_level
            options$null_value <- my_ho

            results <- jaspTools::runAnalysis(analysis_name, data_file, options)
            results$options <- options

            testthat::expect_snapshot(results$results$overviewTable$data)
            testthat::expect_snapshot(results$results$es_m_differenceTable$data)
            testthat::expect_snapshot(results$results$smdTable$data)
            testthat::expect_snapshot(results$results$heTable$data)
            testthat::expect_snapshot(results$results$mdiffPlot$data)

    }
  }


})



test_that("jasp_estimate_mdiff_two summary data check tables and figures", {
  analysis_name <- "jasp_estimate_mdiff_two"

  options <- options_esci(analysis_name)

  options$switch <- "from_summary"
  options$reference_mean <- 10
  options$reference_sd <- 3
  options$reference_n <- 20
  options$comparison_mean <- 12
  options$comparison_sd <- 3
  options$comparison_n <- 20
  options$conf_level <- 0.95
  options$effect_size <- "mean"
  options$show_details <- TRUE
  options$show_calculations <- TRUE

  options$evaluate_hypotheses <- TRUE
  options$null_value <- 0
  options$null_boundary <- 0
  options$rope_units <- "raw"

  options$shape_summary <- "circle filled"
  options$size_summary <- 4
  options$color_summary <- "#008DF9"
  options$fill_summary <- "#008DF9"
  options$alpha_summary <- 0
  options$linetype_summary <- "solid"
  options$size_interval <- 3
  options$color_interval <- 'black'
  options$alpha_interval <- 0
  options$fill_error <- "gray75"
  options$alpha_error <- 0
  options$shape_raw <- "circle filled"
  options$size_raw <- 2
  options$color_raw <- "#008DF9"
  options$fill_raw <- "NA"
  options$alpha_raw <- 0

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
            testthat::expect_snapshot(results$results$es_m_differenceTable$data)
            testthat::expect_snapshot(results$results$smdTable$data)
            testthat::expect_snapshot(results$results$heTable$data)
            #testthat::expect_snapshot(results$results$mdiffPlot$data)
          }
        }
      }
    }
  }

})

