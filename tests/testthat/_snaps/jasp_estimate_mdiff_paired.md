# jasp_estimate_mdiff_two raw data check tables and figures

    Code
      results$results$overviewTable$data
    Output
      [[1]]
      [[1]]$df
      [1] 50
      
      [[1]]$max
      [1] 80
      
      [[1]]$mean
      [1] 38.30118
      
      [[1]]$mean_LL
      [1] 32.77917
      
      [[1]]$mean_SE
      [1] 2.749236
      
      [[1]]$mean_UL
      [1] 43.82318
      
      [[1]]$median
      [1] 40
      
      [[1]]$min
      [1] 6.67
      
      [[1]]$moe
      [1] 5.522003
      
      [[1]]$outcome_variable_name
      [1] "Pretest"
      
      [[1]]$q1
      [1] 26.67
      
      [[1]]$q3
      [1] 50
      
      [[1]]$sd
      [1] 19.63347
      
      
      [[2]]
      [[2]]$df
      [1] 50
      
      [[2]]$max
      [1] 93.33
      
      [[2]]$mean
      [1] 48.75804
      
      [[2]]$mean_LL
      [1] 42.62479
      
      [[2]]$mean_SE
      [1] 3.053555
      
      [[2]]$mean_UL
      [1] 54.89129
      
      [[2]]$median
      [1] 46.67
      
      [[2]]$min
      [1] 0
      
      [[2]]$moe
      [1] 6.133247
      
      [[2]]$outcome_variable_name
      [1] "Posttest"
      
      [[2]]$q1
      [1] 33.33
      
      [[2]]$q3
      [1] 66.67
      
      [[2]]$sd
      [1] 21.80675
      
      

---

    Code
      results$results$es_m_differenceTable$data
    Output
      [[1]]
      [[1]]$LL
      [1] 42.62479
      
      [[1]]$SE
      [1] 3.053555
      
      [[1]]$UL
      [1] 54.89129
      
      [[1]]$df
      [1] 50
      
      [[1]]$effect
      [1] "Posttest"
      
      [[1]]$effect_size
      [1] 48.75804
      
      [[1]]$moe
      [1] 6.133247
      
      [[1]]$n_component
      [1] 0.140028
      
      [[1]]$s_component
      [1] 21.80675
      
      [[1]]$t_multiplier
      [1] 2.008559
      
      
      [[2]]
      [[2]]$LL
      [1] 32.77917
      
      [[2]]$SE
      [1] 2.749236
      
      [[2]]$UL
      [1] 43.82318
      
      [[2]]$df
      [1] 50
      
      [[2]]$effect
      [1] "Pretest"
      
      [[2]]$effect_size
      [1] 38.30118
      
      [[2]]$moe
      [1] 5.522003
      
      [[2]]$n_component
      [1] 0.140028
      
      [[2]]$s_component
      [1] 19.63347
      
      [[2]]$t_multiplier
      [1] 2.008559
      
      
      [[3]]
      [[3]]$LL
      [1] 5.952733
      
      [[3]]$SE
      [1] 2.242468
      
      [[3]]$UL
      [1] 14.96099
      
      [[3]]$df
      [1] 50
      
      [[3]]$effect
      [1] "Posttest ‒ Pretest"
      
      [[3]]$effect_size
      [1] 10.45686
      
      [[3]]$moe
      [1] 4.504129
      
      [[3]]$n_component
      [1] 0.140028
      
      [[3]]$s_component
      [1] 16.01442
      
      [[3]]$t_multiplier
      [1] 2.008559
      
      

---

    Code
      results$results$smdTable$data
    Output
      [[1]]
      [[1]]$LL
      [1] 0.273532
      
      [[1]]$SE
      [1] 0.1175775
      
      [[1]]$UL
      [1] 0.7344272
      
      [[1]]$d_biased
      [1] 0.4989144
      
      [[1]]$denominator
      [1] 20.74858
      
      [[1]]$df
      [1] 50
      
      [[1]]$effect
      [1] "Posttest - Pretest"
      
      [[1]]$effect_size
      [1] 0.4989144
      
      [[1]]$numerator
      [1] 10.45686
      
      

---

    Code
      results$results$heTable$data
    Output
      [[1]]
      [[1]]$CI
      [1] "95% CI [5.952733, 14.96099]"
      
      [[1]]$CI_compare
      [1] "The 95% CI does not contain <i>H</i><sub>0</sub>"
      
      [[1]]$conclusion
      [1] "At α = 0.05, 0.00 is not a plausible value of μ<sub>diff</sub>"
      
      [[1]]$df
      [1] 50
      
      [[1]]$effect
      [1] "Posttest ‒ Pretest"
      
      [[1]]$null_decision
      [1] "Reject <i>H</i><sub>0</sub>"
      
      [[1]]$null_words
      [1] "0.00"
      
      [[1]]$p
      [1] 2.352521e-05
      
      [[1]]$t
      [1] 4.663105
      
      

---

    Code
      results$results$mdiffPlot$data
    Output
      [1] "plots/41.png"

# jasp_estimate_mdiff_paired summary data check tables and figures

    Code
      results$results$overviewTable$data
    Output
      [[1]]
      [[1]]$df
      [1] 19
      
      [[1]]$mean
      [1] 10
      
      [[1]]$mean_LL
      [1] 9.063971
      
      [[1]]$mean_SE
      [1] 0.4472136
      
      [[1]]$mean_UL
      [1] 10.93603
      
      [[1]]$moe
      [1] 0.9360288
      
      [[1]]$outcome_variable_name
      [1] "Reference measure"
      
      [[1]]$sd
      [1] 2
      
      
      [[2]]
      [[2]]$df
      [1] 19
      
      [[2]]$mean
      [1] 12
      
      [[2]]$mean_LL
      [1] 10.97037
      
      [[2]]$mean_SE
      [1] 0.491935
      
      [[2]]$mean_UL
      [1] 13.02963
      
      [[2]]$moe
      [1] 1.029632
      
      [[2]]$outcome_variable_name
      [1] "Comparison measure"
      
      [[2]]$sd
      [1] 2.2
      
      

---

    Code
      results$results$es_m_differenceTable$data
    Output
      [[1]]
      [[1]]$LL
      [1] 10.97037
      
      [[1]]$SE
      [1] 0.491935
      
      [[1]]$UL
      [1] 13.02963
      
      [[1]]$df
      [1] 19
      
      [[1]]$effect
      [1] "Comparison measure"
      
      [[1]]$effect_size
      [1] 12
      
      [[1]]$moe
      [1] 1.029632
      
      [[1]]$n_component
      [1] 0.2236068
      
      [[1]]$s_component
      [1] 2.2
      
      [[1]]$t_multiplier
      [1] 2.093024
      
      
      [[2]]
      [[2]]$LL
      [1] 9.063971
      
      [[2]]$SE
      [1] 0.4472136
      
      [[2]]$UL
      [1] 10.93603
      
      [[2]]$df
      [1] 19
      
      [[2]]$effect
      [1] "Reference measure"
      
      [[2]]$effect_size
      [1] 10
      
      [[2]]$moe
      [1] 0.9360288
      
      [[2]]$n_component
      [1] 0.2236068
      
      [[2]]$s_component
      [1] 2
      
      [[2]]$t_multiplier
      [1] 2.093024
      
      
      [[3]]
      [[3]]$LL
      [1] 1.233827
      
      [[3]]$SE
      [1] 0.3660601
      
      [[3]]$UL
      [1] 2.766173
      
      [[3]]$df
      [1] 19
      
      [[3]]$effect
      [1] "Comparison measure ‒ Reference measure"
      
      [[3]]$effect_size
      [1] 2
      
      [[3]]$moe
      [1] 0.7661726
      
      [[3]]$n_component
      [1] 0.2236068
      
      [[3]]$s_component
      [1] 1.637071
      
      [[3]]$t_multiplier
      [1] 2.093024
      
      

---

    Code
      results$results$smdTable$data
    Output
      [[1]]
      [[1]]$LL
      [1] 0.5143167
      
      [[1]]$SE
      [1] 0.2229563
      
      [[1]]$UL
      [1] 1.388289
      
      [[1]]$d_biased
      [1] 0.9259303
      
      [[1]]$denominator
      [1] 2.10238
      
      [[1]]$df
      [1] 19
      
      [[1]]$effect
      [1] "Comparison measure - Reference measure"
      
      [[1]]$effect_size
      [1] 0.9259303
      
      [[1]]$numerator
      [1] 2
      
      

---

    Code
      results$results$heTable$data
    Output
      [[1]]
      [[1]]$CI
      [1] "95% CI [1.233827, 2.766173]"
      
      [[1]]$CI_compare
      [1] "The 95% CI does not contain <i>H</i><sub>0</sub>"
      
      [[1]]$conclusion
      [1] "At α = 0.05, 0.00 is not a plausible value of μ<sub>diff</sub>"
      
      [[1]]$df
      [1] 19
      
      [[1]]$effect
      [1] "Comparison measure ‒ Reference measure"
      
      [[1]]$null_decision
      [1] "Reject <i>H</i><sub>0</sub>"
      
      [[1]]$null_words
      [1] "0.00"
      
      [[1]]$p
      [1] 2.85317e-05
      
      [[1]]$t
      [1] 5.463584
      
      

