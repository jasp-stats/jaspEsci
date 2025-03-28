
test_that("overviewTable matches", {
  options <- jaspTools::analysisOptions("jasp_describe")
  options$outcome_variable <- "Posttest"

  #results <- jaspTools::runAnalysis("jasp_describe", "tests/testthat/self_explain.csv", options)

  results <- jaspTools::runAnalysis("jasp_describe", "self_explain.csv", options)
  table <- results[["results"]][["overviewTable"]][["data"]]

  testthat::expect_snapshot(table)

})


# test_that("histogram matches"){
#   options <- jaspTools::analysisOptions("jasp_describe")
#   options$outcome_variable <- "Posttest"
#   results <- jaspTools::runAnalysis("jasp_describe", "tests/self_explain.csv", options)
#
#   plotName <- results[["results"]][[""]]
#
# }
