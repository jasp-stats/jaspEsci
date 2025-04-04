# jasp_estimate_pdiff_two raw data check tables and figures

    Code
      results$results$overviewTable$data
    Output
      [[1]]
      [[1]]$P
      [1] 0.7037037
      
      [[1]]$P_LL
      [1] 0.5705934
      
      [[1]]$P_SE
      [1] 0.06074692
      
      [[1]]$P_UL
      [1] 0.8087169
      
      [[1]]$P_adjusted
      [1] 0.6896552
      
      [[1]]$cases
      [1] 38
      
      [[1]]$grouping_variable_level
      [1] "Commuter"
      
      [[1]]$grouping_variable_name
      [1] "CommuterStatus"
      
      [[1]]$n
      [1] 54
      
      [[1]]$outcome_variable_level
      [1] "Female"
      
      [[1]]$outcome_variable_name
      [1] "Gender"
      
      
      [[2]]
      [[2]]$P
      [1] 0.2962963
      
      [[2]]$P_LL
      [1] 0.1912831
      
      [[2]]$P_SE
      [1] 0.06074692
      
      [[2]]$P_UL
      [1] 0.4294066
      
      [[2]]$P_adjusted
      [1] 0.3103448
      
      [[2]]$cases
      [1] 16
      
      [[2]]$grouping_variable_level
      [1] "Commuter"
      
      [[2]]$grouping_variable_name
      [1] "CommuterStatus"
      
      [[2]]$n
      [1] 54
      
      [[2]]$outcome_variable_level
      [1] "Male"
      
      [[2]]$outcome_variable_name
      [1] "Gender"
      
      
      [[3]]
      [[3]]$P
      [1] 0.6440678
      
      [[3]]$P_LL
      [1] 0.5160345
      
      [[3]]$P_SE
      [1] 0.0606573
      
      [[3]]$P_UL
      [1] 0.7538068
      
      [[3]]$P_adjusted
      [1] 0.6349206
      
      [[3]]$cases
      [1] 38
      
      [[3]]$grouping_variable_level
      [1] "Resident"
      
      [[3]]$grouping_variable_name
      [1] "CommuterStatus"
      
      [[3]]$n
      [1] 59
      
      [[3]]$outcome_variable_level
      [1] "Female"
      
      [[3]]$outcome_variable_name
      [1] "Gender"
      
      
      [[4]]
      [[4]]$P
      [1] 0.3559322
      
      [[4]]$P_LL
      [1] 0.2461932
      
      [[4]]$P_SE
      [1] 0.0606573
      
      [[4]]$P_UL
      [1] 0.4839655
      
      [[4]]$P_adjusted
      [1] 0.3650794
      
      [[4]]$cases
      [1] 21
      
      [[4]]$grouping_variable_level
      [1] "Resident"
      
      [[4]]$grouping_variable_name
      [1] "CommuterStatus"
      
      [[4]]$n
      [1] 59
      
      [[4]]$outcome_variable_level
      [1] "Male"
      
      [[4]]$outcome_variable_name
      [1] "Gender"
      
      

---

    Code
      results$results$es_proportion_difference$data
    Output
      [[1]]
      [[1]]$LL
      [1] 0.5160345
      
      [[1]]$SE
      [1] 0.0606573
      
      [[1]]$UL
      [1] 0.7538068
      
      [[1]]$effect_plus
      [1] "<i>P</i><sub>Female</sub>: Resident"
      
      [[1]]$effect_size
      [1] 0.6440678
      
      [[1]]$effect_size_adjusted
      [1] 0.6349206
      
      [[1]]$outcome_variable_name
      [1] "Gender"
      
      
      [[2]]
      [[2]]$LL
      [1] 0.5705934
      
      [[2]]$SE
      [1] 0.06074692
      
      [[2]]$UL
      [1] 0.8087169
      
      [[2]]$effect_plus
      [1] "<i>P</i><sub>Female</sub>: Commuter"
      
      [[2]]$effect_size
      [1] 0.7037037
      
      [[2]]$effect_size_adjusted
      [1] 0.6896552
      
      [[2]]$outcome_variable_name
      [1] "Gender"
      
      
      [[3]]
      [[3]]$LL
      [1] -0.2274472
      
      [[3]]$SE
      [1] 0.08692143
      
      [[3]]$UL
      [1] 0.1132786
      
      [[3]]$effect_plus
      [1] "<i>P</i><sub>Female</sub>: Resident ‒ Commuter"
      
      [[3]]$effect_size
      [1] -0.05963591
      
      [[3]]$effect_size_adjusted
      [1] -0.05708431
      
      [[3]]$outcome_variable_name
      [1] "Gender"
      
      

---

    Code
      results$results$es_odds_ratio$data
    Output
      [[1]]
      [[1]]$LL
      [1] 0.5136437
      
      [[1]]$UL
      [1] 1.633417
      
      [[1]]$effect_plus
      [1] "<i>P</i><sub>Female</sub>: Resident, Commuter Odds Ratio"
      
      [[1]]$effect_size
      [1] 0.9159664
      
      [[1]]$outcome_variable_name
      [1] "Gender"
      
      

---

    Code
      results$results$es_phi$data
    Output
      [[1]]
      [[1]]$LL
      [1] -0.242826
      
      [[1]]$SE
      [1] 0.0936085
      
      [[1]]$UL
      [1] 0.1200661
      
      [[1]]$effect
      [1] "CommuterStatus and Gender"
      
      [[1]]$effect_size
      [1] -0.06347797
      
      

---

    Code
      results$results$chi_square$data
    Output
      [[1]]
      [[1]]$Commuter
      [1] "38 (<i>36</i>)"
      
      [[1]]$Resident
      [1] "38 (<i>40</i>)"
      
      [[1]]$esci_Totals
      [1] "<b>76</b>"
      
      [[1]]$outcome_variable_level
      [1] "Female"
      
      
      [[2]]
      [[2]]$Commuter
      [1] "16 (<i>18</i>)"
      
      [[2]]$Resident
      [1] "21 (<i>19</i>)"
      
      [[2]]$esci_Totals
      [1] "<b>37</b>"
      
      [[2]]$outcome_variable_level
      [1] "Male"
      
      
      [[3]]
      [[3]]$Commuter
      [1] "<b>54</b>"
      
      [[3]]$Resident
      [1] "<b>59</b>"
      
      [[3]]$esci_Totals
      [1] "<b> 113 </b>"
      
      [[3]]$outcome_variable_level
      [1] "Total"
      
      

---

    Code
      results$results$heTable$data
    Output
      [[1]]
      [[1]]$CI
      [1] "95% CI [-0.2274472, 0.1132786]"
      
      [[1]]$CI_compare
      [1] "The 95% CI contains <i>H</i><sub>0</sub>"
      
      [[1]]$conclusion
      [1] "At α = 0.05, 0.00 remains a plausible value of Π<sub>diff</sub>"
      
      [[1]]$effect_plus
      [1] "<i>P</i><sub>Female</sub>: Resident ‒ Commuter"
      
      [[1]]$null_decision
      [1] "Fail to reject <i>H</i><sub>0</sub>"
      
      [[1]]$null_words
      [1] "0.00"
      
      [[1]]$outcome_variable_name
      [1] "Gender"
      
      [[1]]$p
      [1] 0.5113516
      
      [[1]]$t
      [1] -0.6567346
      
      

# jasp_estimate_pdiff_two summary data check tables and figures

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
      
      [[1]]$grouping_variable_level
      [1] "Control"
      
      [[1]]$grouping_variable_name
      [1] "Grouping variable"
      
      [[1]]$n
      [1] 100
      
      [[1]]$outcome_variable_level
      [1] "Sick"
      
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
      
      [[2]]$grouping_variable_level
      [1] "Control"
      
      [[2]]$grouping_variable_name
      [1] "Grouping variable"
      
      [[2]]$n
      [1] 100
      
      [[2]]$outcome_variable_level
      [1] "Well"
      
      [[2]]$outcome_variable_name
      [1] "Outcome variable"
      
      
      [[3]]
      [[3]]$P
      [1] 0.4
      
      [[3]]$P_LL
      [1] 0.3095447
      
      [[3]]$P_SE
      [1] 0.04811389
      
      [[3]]$P_UL
      [1] 0.4981476
      
      [[3]]$P_adjusted
      [1] 0.4038462
      
      [[3]]$cases
      [1] 40
      
      [[3]]$grouping_variable_level
      [1] "Treated"
      
      [[3]]$grouping_variable_name
      [1] "Grouping variable"
      
      [[3]]$n
      [1] 100
      
      [[3]]$outcome_variable_level
      [1] "Sick"
      
      [[3]]$outcome_variable_name
      [1] "Outcome variable"
      
      
      [[4]]
      [[4]]$P
      [1] 0.6
      
      [[4]]$P_LL
      [1] 0.5018524
      
      [[4]]$P_SE
      [1] 0.04811389
      
      [[4]]$P_UL
      [1] 0.6904553
      
      [[4]]$P_adjusted
      [1] 0.5961538
      
      [[4]]$cases
      [1] 60
      
      [[4]]$grouping_variable_level
      [1] "Treated"
      
      [[4]]$grouping_variable_name
      [1] "Grouping variable"
      
      [[4]]$n
      [1] 100
      
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
      [1] 0.3095447
      
      [[1]]$SE
      [1] 0.04811389
      
      [[1]]$UL
      [1] 0.4981476
      
      [[1]]$effect_plus
      [1] "<i>P</i><sub>Sick</sub>: Treated"
      
      [[1]]$effect_size
      [1] 0.4
      
      [[1]]$effect_size_adjusted
      [1] 0.4038462
      
      [[1]]$outcome_variable_name
      [1] "Outcome variable"
      
      
      [[2]]
      [[2]]$LL
      [1] 0.1330481
      
      [[2]]$SE
      [1] 0.04004684
      
      [[2]]$UL
      [1] 0.2900288
      
      [[2]]$effect_plus
      [1] "<i>P</i><sub>Sick</sub>: Control"
      
      [[2]]$effect_size
      [1] 0.2
      
      [[2]]$effect_size_adjusted
      [1] 0.2115385
      
      [[2]]$outcome_variable_name
      [1] "Outcome variable"
      
      
      [[3]]
      [[3]]$LL
      [1] 0.07274641
      
      [[3]]$SE
      [1] 0.06292566
      
      [[3]]$UL
      [1] 0.3194105
      
      [[3]]$effect_plus
      [1] "<i>P</i><sub>Sick</sub>: Treated ‒ Control"
      
      [[3]]$effect_size
      [1] 0.2
      
      [[3]]$effect_size_adjusted
      [1] 0.1960784
      
      [[3]]$outcome_variable_name
      [1] "Outcome variable"
      
      

---

    Code
      results$results$es_odds_ratio$data
    Output
      [[1]]
      [[1]]$LL
      [1] 1.085427
      
      [[1]]$UL
      [1] 3.595852
      
      [[1]]$effect_plus
      [1] "<i>P</i><sub>Sick</sub>: Treated, Control Odds Ratio"
      
      [[1]]$effect_size
      [1] 1.97561
      
      [[1]]$outcome_variable_name
      [1] "Outcome variable"
      
      

---

    Code
      results$results$es_phi$data
    Output
      [[1]]
      [[1]]$LL
      [1] 0.08163264
      
      [[1]]$SE
      [1] 0.0680136
      
      [[1]]$UL
      [1] 0.3467577
      
      [[1]]$effect
      [1] "Grouping variable and Outcome variable"
      
      [[1]]$effect_size
      [1] 0.2182179
      
      

---

    Code
      results$results$heTable$data
    Output
      [[1]]
      [[1]]$CI
      [1] "95% CI [0.07274641, 0.3194105]"
      
      [[1]]$CI_compare
      [1] "The 95% CI does not contain <i>H</i><sub>0</sub>"
      
      [[1]]$conclusion
      [1] "At α = 0.05, 0.00 is not a plausible value of Π<sub>diff</sub>"
      
      [[1]]$effect_plus
      [1] "<i>P</i><sub>Sick</sub>: Treated ‒ Control"
      
      [[1]]$null_decision
      [1] "Reject <i>H</i><sub>0</sub>"
      
      [[1]]$null_words
      [1] "0.00"
      
      [[1]]$outcome_variable_name
      [1] "Outcome variable"
      
      [[1]]$p
      [1] 0.001833017
      
      [[1]]$t
      [1] 3.116033
      
      

