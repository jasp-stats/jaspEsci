
test_that("Tables match across conf_levels for summary 2x2 between-subjects", {
  analysis_name <- "jasp_estimate_mdiff_2x2"

  options <- jaspTools::analysisOptions(analysis_name)
  options$switch <- "from_summary"

  options$null_boundary <- 0
  options$evaluate_hypotheses <- FALSE

  conf_levels <- c(0.90, 0.95, 0.99)
  table_names <- c("overviewTable", "smdTable", "es_m_differenceTable")

  for (my_conf_level in conf_levels) {
    options$conf_level <- my_conf_level

    #results <- jaspTools::runAnalysis(analysis_name, "tests/testthat/self_explain.csv", options)
    results <- jaspTools::runAnalysis(analysis_name, "self_explain.csv", options)
    results$properties <- list()
    results$properties$conf_level <- my_conf_level

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
