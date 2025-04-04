# jasp_estimate_pdiff_one raw data check tables and figures

    Code
      results$results$overviewTable$data
    Output
      [[1]]
      [[1]]$P
      [1] 0.6725664
      
      [[1]]$P_LL
      [1] 0.5812488
      
      [[1]]$P_SE
      [1] 0.04358136
      
      [[1]]$P_UL
      [1] 0.7520846
      
      [[1]]$P_adjusted
      [1] 0.6666667
      
      [[1]]$cases
      [1] 76
      
      [[1]]$n
      [1] 113
      
      [[1]]$outcome_variable_level
      [1] "Female"
      
      [[1]]$outcome_variable_name
      [1] "Gender"
      
      
      [[2]]
      [[2]]$P
      [1] 0.3274336
      
      [[2]]$P_LL
      [1] 0.2479154
      
      [[2]]$P_SE
      [1] 0.04358136
      
      [[2]]$P_UL
      [1] 0.4187512
      
      [[2]]$P_adjusted
      [1] 0.3333333
      
      [[2]]$cases
      [1] 37
      
      [[2]]$n
      [1] 113
      
      [[2]]$outcome_variable_level
      [1] "Male"
      
      [[2]]$outcome_variable_name
      [1] "Gender"
      
      
      [[3]]
      [[3]]$P
      [1] 0.4778761
      
      [[3]]$P_LL
      [1] 0.3881159
      
      [[3]]$P_SE
      [1] 0.04618279
      
      [[3]]$P_UL
      [1] 0.5691491
      
      [[3]]$P_adjusted
      [1] 0.4786325
      
      [[3]]$cases
      [1] 54
      
      [[3]]$n
      [1] 113
      
      [[3]]$outcome_variable_level
      [1] "Commuter"
      
      [[3]]$outcome_variable_name
      [1] "CommuterStatus"
      
      
      [[4]]
      [[4]]$P
      [1] 0.5221239
      
      [[4]]$P_LL
      [1] 0.4308509
      
      [[4]]$P_SE
      [1] 0.04618279
      
      [[4]]$P_UL
      [1] 0.6118841
      
      [[4]]$P_adjusted
      [1] 0.5213675
      
      [[4]]$cases
      [1] 59
      
      [[4]]$n
      [1] 113
      
      [[4]]$outcome_variable_level
      [1] "Resident"
      
      [[4]]$outcome_variable_name
      [1] "CommuterStatus"
      
      

---

    Code
      results$results$heTable$data
    Output
      [[1]]
      [[1]]$CI
      [1] "95% CI [0.5812488, 0.7520846]"
      
      [[1]]$CI_compare
      [1] "The 95% CI does not contain <i>H</i><sub>0</sub>"
      
      [[1]]$conclusion
      [1] "At α = 0.05, 0.00 is not a plausible value of Π"
      
      [[1]]$effect_plus
      [1] "<i>P</i><sub> Female</sub>: Gender ‒ Reference value"
      
      [[1]]$null_decision
      [1] "Reject <i>H</i><sub>0</sub>"
      
      [[1]]$null_words
      [1] "0.00"
      
      [[1]]$p
      [1] 7.999102e-53
      
      [[1]]$t
      [1] 15.29706
      
      
      [[2]]
      [[2]]$CI
      [1] "95% CI [0.3881159, 0.5691491]"
      
      [[2]]$CI_compare
      [1] "The 95% CI does not contain <i>H</i><sub>0</sub>"
      
      [[2]]$conclusion
      [1] "At α = 0.05, 0.00 is not a plausible value of Π"
      
      [[2]]$effect_plus
      [1] "<i>P</i><sub> Commuter</sub>: CommuterStatus ‒ Reference value"
      
      [[2]]$null_decision
      [1] "Reject <i>H</i><sub>0</sub>"
      
      [[2]]$null_words
      [1] "0.00"
      
      [[2]]$p
      [1] 3.620055e-25
      
      [[2]]$t
      [1] 10.36387
      
      

# jasp_estimate_pdiff_one summary data check tables and figures

    Code
      results$results$overviewTable$data
    Output
      [[1]]
      [[1]]$P
      [1] 0.2
      
      [[1]]$P_LL
      [1] 0.1330481
      
      [[1]]$P_SE
      [1] 0.04004684
      
      [[1]]$P_UL
      [1] 0.2900288
      
      [[1]]$P_adjusted
      [1] 0.2115385
      
      [[1]]$cases
      [1] 20
      
      [[1]]$n
      [1] 100
      
      [[1]]$outcome_variable_level
      [1] "Affected"
      
      [[1]]$outcome_variable_name
      [1] "Outcome variable"
      
      
      [[2]]
      [[2]]$P
      [1] 0.8
      
      [[2]]$P_LL
      [1] 0.7099712
      
      [[2]]$P_SE
      [1] 0.04004684
      
      [[2]]$P_UL
      [1] 0.8669519
      
      [[2]]$P_adjusted
      [1] 0.7884615
      
      [[2]]$cases
      [1] 80
      
      [[2]]$n
      [1] 100
      
      [[2]]$outcome_variable_level
      [1] "Not Affected"
      
      [[2]]$outcome_variable_name
      [1] "Outcome variable"
      
      

---

    Code
      results$results$heTable$data
    Output
      [[1]]
      [[1]]$CI
      [1] "95% CI [0.1330481, 0.2900288]"
      
      [[1]]$CI_compare
      [1] "The 95% CI does not contain <i>H</i><sub>0</sub>"
      
      [[1]]$conclusion
      [1] "At α = 0.05, 0.00 is not a plausible value of Π"
      
      [[1]]$effect_plus
      [1] "<i>P</i><sub> Affected</sub>: Outcome variable ‒ Reference value"
      
      [[1]]$null_decision
      [1] "Reject <i>H</i><sub>0</sub>"
      
      [[1]]$null_words
      [1] "0.00"
      
      [[1]]$p
      [1] 1.275888e-07
      
      [[1]]$t
      [1] 5.282276
      
      

