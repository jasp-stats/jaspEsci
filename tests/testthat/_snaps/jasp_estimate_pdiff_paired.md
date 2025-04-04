# jasp_estimate_pdiff_paired raw data check tables and figures

    Code
      results$results$overviewTable$data
    Output
      [[1]]
      [[1]]$P
      [1] 0.2857143
      
      [[1]]$P_LL
      [1] 0.1968557
      
      [[1]]$P_SE
      [1] 0.05073592
      
      [[1]]$P_UL
      [1] 0.3957369
      
      [[1]]$P_adjusted
      [1] 0.2962963
      
      [[1]]$cases
      [1] 22
      
      [[1]]$n
      [1] 77
      
      [[1]]$outcome_variable_level
      [1] "ADHD"
      
      [[1]]$outcome_variable_name
      [1] "Before"
      
      
      [[2]]
      [[2]]$P
      [1] 0.7142857
      
      [[2]]$P_LL
      [1] 0.6042631
      
      [[2]]$P_SE
      [1] 0.05073592
      
      [[2]]$P_UL
      [1] 0.8031443
      
      [[2]]$P_adjusted
      [1] 0.7037037
      
      [[2]]$cases
      [1] 55
      
      [[2]]$n
      [1] 77
      
      [[2]]$outcome_variable_level
      [1] "No"
      
      [[2]]$outcome_variable_name
      [1] "Before"
      
      
      [[3]]
      [[3]]$P
      [1] 0.1428571
      
      [[3]]$P_LL
      [1] 0.08055704
      
      [[3]]$P_SE
      [1] 0.04078483
      
      [[3]]$P_UL
      [1] 0.2404306
      
      [[3]]$P_adjusted
      [1] 0.1604938
      
      [[3]]$cases
      [1] 11
      
      [[3]]$n
      [1] 77
      
      [[3]]$outcome_variable_level
      [1] "ADHD"
      
      [[3]]$outcome_variable_name
      [1] "After"
      
      
      [[4]]
      [[4]]$P
      [1] 0.8571429
      
      [[4]]$P_LL
      [1] 0.7595694
      
      [[4]]$P_SE
      [1] 0.04078483
      
      [[4]]$P_UL
      [1] 0.919443
      
      [[4]]$P_adjusted
      [1] 0.8395062
      
      [[4]]$cases
      [1] 66
      
      [[4]]$n
      [1] 77
      
      [[4]]$outcome_variable_level
      [1] "No"
      
      [[4]]$outcome_variable_name
      [1] "After"
      
      

---

    Code
      results$results$es_proportion_difference$data
    Output
      [[1]]
      [[1]]$LL
      [1] 0.08055704
      
      [[1]]$SE
      [1] 0.04078483
      
      [[1]]$UL
      [1] 0.2404306
      
      [[1]]$effect_plus
      [1] "<i>P</i><sub>ADHD</sub>: After"
      
      [[1]]$effect_size
      [1] 0.1428571
      
      [[1]]$effect_size_adjusted
      [1] 0.1604938
      
      
      [[2]]
      [[2]]$LL
      [1] 0.1968557
      
      [[2]]$SE
      [1] 0.05073592
      
      [[2]]$UL
      [1] 0.3957369
      
      [[2]]$effect_plus
      [1] "<i>P</i><sub>ADHD</sub>: Before"
      
      [[2]]$effect_size
      [1] 0.2857143
      
      [[2]]$effect_size_adjusted
      [1] 0.2962963
      
      
      [[3]]
      [[3]]$LL
      [1] -0.2232584
      
      [[3]]$SE
      [1] 0.04286704
      
      [[3]]$UL
      [1] -0.05522266
      
      [[3]]$effect_plus
      [1] "<i>P</i><sub>ADHD</sub>: After ‒ Before"
      
      [[3]]$effect_size
      [1] -0.1428571
      
      [[3]]$effect_size_adjusted
      [1] -0.1392405
      
      

---

    Code
      results$results$heTable$data
    Output
      [[1]]
      [[1]]$CI
      [1] "95% CI [-0.2232584, -0.05522266]"
      
      [[1]]$CI_compare
      [1] "The 95% CI does not contain <i>H</i><sub>0</sub>"
      
      [[1]]$conclusion
      [1] "At α = 0.05, 0.00 is not a plausible value of Π<sub>diff</sub>"
      
      [[1]]$effect_plus
      [1] "<i>P</i><sub>ADHD</sub>: After ‒ Before"
      
      [[1]]$null_decision
      [1] "Reject <i>H</i><sub>0</sub>"
      
      [[1]]$null_words
      [1] "0.00"
      
      [[1]]$p
      [1] 0.001161395
      
      [[1]]$t
      [1] -3.248195
      
      

# jasp_estimate_pdiff_paired summary data check tables and figures

    Code
      results$results$overviewTable$data
    Output
      [[1]]
      [[1]]$P
      [1] 0.6875
      
      [[1]]$P_LL
      [1] 0.5126774
      
      [[1]]$P_SE
      [1] 0.07856742
      
      [[1]]$P_UL
      [1] 0.820656
      
      [[1]]$P_adjusted
      [1] 0.6666667
      
      [[1]]$cases
      [1] 22
      
      [[1]]$n
      [1] 32
      
      [[1]]$outcome_variable_level
      [1] "Sick"
      
      [[1]]$outcome_variable_name
      [1] "Grouping variable"
      
      
      [[2]]
      [[2]]$P
      [1] 0.3125
      
      [[2]]$P_LL
      [1] 0.179344
      
      [[2]]$P_SE
      [1] 0.07856742
      
      [[2]]$P_UL
      [1] 0.4873226
      
      [[2]]$P_adjusted
      [1] 0.3333333
      
      [[2]]$cases
      [1] 10
      
      [[2]]$n
      [1] 32
      
      [[2]]$outcome_variable_level
      [1] "Well"
      
      [[2]]$outcome_variable_name
      [1] "Grouping variable"
      
      
      [[3]]
      [[3]]$P
      [1] 0.71875
      
      [[3]]$P_LL
      [1] 0.5439707
      
      [[3]]$P_SE
      [1] 0.07677372
      
      [[3]]$P_UL
      [1] 0.8449182
      
      [[3]]$P_adjusted
      [1] 0.6944444
      
      [[3]]$cases
      [1] 23
      
      [[3]]$n
      [1] 32
      
      [[3]]$outcome_variable_level
      [1] "Sick"
      
      [[3]]$outcome_variable_name
      [1] "Outcome variable"
      
      
      [[4]]
      [[4]]$P
      [1] 0.28125
      
      [[4]]$P_LL
      [1] 0.1550818
      
      [[4]]$P_SE
      [1] 0.07677372
      
      [[4]]$P_UL
      [1] 0.4560293
      
      [[4]]$P_adjusted
      [1] 0.3055556
      
      [[4]]$cases
      [1] 9
      
      [[4]]$n
      [1] 32
      
      [[4]]$outcome_variable_level
      [1] "Well"
      
      [[4]]$outcome_variable_name
      [1] "Outcome variable"
      
      

---

    Code
      results$results$es_proportion_difference$data
    Output
      [[1]]
      [[1]]$LL
      [1] 0.5439707
      
      [[1]]$SE
      [1] 0.07677372
      
      [[1]]$UL
      [1] 0.8449182
      
      [[1]]$effect_plus
      [1] "<i>P</i><sub>Sick</sub>: Outcome variable"
      
      [[1]]$effect_size
      [1] 0.71875
      
      [[1]]$effect_size_adjusted
      [1] 0.6944444
      
      
      [[2]]
      [[2]]$LL
      [1] 0.5126774
      
      [[2]]$SE
      [1] 0.07856742
      
      [[2]]$UL
      [1] 0.820656
      
      [[2]]$effect_plus
      [1] "<i>P</i><sub>Sick</sub>: Grouping variable"
      
      [[2]]$effect_size
      [1] 0.6875
      
      [[2]]$effect_size_adjusted
      [1] 0.6666667
      
      
      [[3]]
      [[3]]$LL
      [1] -0.1615226
      
      [[3]]$SE
      [1] 0.09741729
      
      [[3]]$UL
      [1] 0.2203461
      
      [[3]]$effect_plus
      [1] "<i>P</i><sub>Sick</sub>: Outcome variable ‒ Grouping variable"
      
      [[3]]$effect_size
      [1] 0.03125
      
      [[3]]$effect_size_adjusted
      [1] 0.02941176
      
      

---

    Code
      results$results$heTable$data
    Output
      [[1]]
      [[1]]$CI
      [1] "95% CI [-0.1615226, 0.2203461]"
      
      [[1]]$CI_compare
      [1] "The 95% CI contains <i>H</i><sub>0</sub>"
      
      [[1]]$conclusion
      [1] "At α = 0.05, 0.00 remains a plausible value of Π<sub>diff</sub>"
      
      [[1]]$effect_plus
      [1] "<i>P</i><sub>Sick</sub>: Outcome variable ‒ Grouping variable"
      
      [[1]]$null_decision
      [1] "Fail to reject <i>H</i><sub>0</sub>"
      
      [[1]]$null_words
      [1] "0.00"
      
      [[1]]$p
      [1] 0.7627167
      
      [[1]]$t
      [1] 0.3019152
      
      

