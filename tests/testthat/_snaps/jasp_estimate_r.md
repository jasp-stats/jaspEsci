# jasp_estimate_r raw data check tables and figures

    Code
      results$results$overviewTable$data
    Output
      [[1]]
      [[1]]$df
      [1] 108
      
      [[1]]$max
      [1] 4
      
      [[1]]$mean
      [1] 3.351376
      
      [[1]]$mean_LL
      [1] 3.258991
      
      [[1]]$mean_SE
      [1] 0.04660792
      
      [[1]]$mean_UL
      [1] 3.443761
      
      [[1]]$median
      [1] 3.5
      
      [[1]]$median_LL
      [1] 3.24
      
      [[1]]$median_SE
      [1] 0.08519382
      
      [[1]]$median_UL
      [1] 3.6
      
      [[1]]$min
      [1] 1.75
      
      [[1]]$missing
      [1] 4
      
      [[1]]$moe
      [1] 0.09238498
      
      [[1]]$n
      [1] 109
      
      [[1]]$outcome_variable_name
      [1] "GPA"
      
      [[1]]$q1
      [1] 3
      
      [[1]]$q3
      [1] 3.79
      
      [[1]]$sd
      [1] 0.486601
      
      
      [[2]]
      [[2]]$df
      [1] 112
      
      [[2]]$max
      [1] 5
      
      [[2]]$mean
      [1] 3.619027
      
      [[2]]$mean_LL
      [1] 3.482668
      
      [[2]]$mean_SE
      [1] 0.0688202
      
      [[2]]$mean_UL
      [1] 3.755385
      
      [[2]]$median
      [1] 3.8
      
      [[2]]$median_LL
      [1] 3.6
      
      [[2]]$median_SE
      [1] 0.04820082
      
      [[2]]$median_UL
      [1] 3.8
      
      [[2]]$min
      [1] 1
      
      [[2]]$missing
      [1] 0
      
      [[2]]$moe
      [1] 0.1363584
      
      [[2]]$n
      [1] 113
      
      [[2]]$outcome_variable_name
      [1] "SWB"
      
      [[2]]$q1
      [1] 3.2
      
      [[2]]$q3
      [1] 4
      
      [[2]]$sd
      [1] 0.7315687
      
      

---

    Code
      results$results$es_r$data
    Output
      [[1]]
      [[1]]$LL
      [1] -0.04873593
      
      [[1]]$SE
      [1] 0.09430394
      
      [[1]]$UL
      [1] 0.3202831
      
      [[1]]$df
      [1] 107
      
      [[1]]$effect
      [1] "GPA and SWB"
      
      [[1]]$effect_size
      [1] 0.1412964
      
      [[1]]$n
      [1] 109
      
      [[1]]$syx
      [1] 0.7262213
      
      [[1]]$x_variable_name
      [1] "GPA"
      
      [[1]]$y_variable_name
      [1] "SWB"
      
      

---

    Code
      results$results$regression$data
    Output
      [[1]]
      [[1]]$LL
      [1] 1.942383
      
      [[1]]$UL
      [1] 3.870414
      
      [[1]]$component
      [1] "Intercept (<i>a</i>)"
      
      [[1]]$values
      [1] 2.906398
      
      
      [[2]]
      [[2]]$LL
      [1] -0.07266515
      
      [[2]]$UL
      [1] 0.4967143
      
      [[2]]$component
      [1] "Slope (<i>b</i>)"
      
      [[2]]$values
      [1] 0.2120246
      
      

---

    Code
      results$results$heTable$data
    Output
      [[1]]
      [[1]]$CI
      [1] "95% CI [-0.04873593, 0.3202831]"
      
      [[1]]$CI_compare
      [1] "The 95% CI contains <i>H</i><sub>0</sub>"
      
      [[1]]$conclusion
      [1] "At α = 0.05, 0.00 remains a plausible value of ρ"
      
      [[1]]$effect
      [1] "GPA and SWB"
      
      [[1]]$null_decision
      [1] "Fail to reject <i>H</i><sub>0</sub>"
      
      [[1]]$null_words
      [1] "0.00"
      
      [[1]]$outcome_variable_name
      [1] "GPA and SWB"
      
      [[1]]$p
      [1] 0.1430481
      
      

# jasp_estimate_r summary data check tables and figures

    Code
      results$results$overviewTable$data
    Output
      NULL

---

    Code
      results$results$es_r$data
    Output
      [[1]]
      [[1]]$LL
      [1] 0.0607124
      
      [[1]]$SE
      [1] 0.1720618
      
      [[1]]$UL
      [1] 0.7663856
      
      [[1]]$df
      [1] 18
      
      [[1]]$effect
      [1] "X variable and Y variable"
      
      [[1]]$effect_size
      [1] 0.5
      
      [[1]]$n
      [1] 20
      
      [[1]]$x_variable_name
      [1] "X variable"
      
      [[1]]$y_variable_name
      [1] "Y variable"
      
      

---

    Code
      results$results$heTable$data
    Output
      [[1]]
      [[1]]$CI
      [1] "95% CI [0.0607124, 0.7663856]"
      
      [[1]]$CI_compare
      [1] "The 95% CI does not contain <i>H</i><sub>0</sub>"
      
      [[1]]$conclusion
      [1] "At α = 0.05, 0.00 is not a plausible value of ρ"
      
      [[1]]$effect
      [1] "X variable and Y variable"
      
      [[1]]$null_decision
      [1] "Reject <i>H</i><sub>0</sub>"
      
      [[1]]$null_words
      [1] "0.00"
      
      [[1]]$outcome_variable_name
      [1] "X variable and Y variable"
      
      [[1]]$p
      [1] 0.02352205
      
      

