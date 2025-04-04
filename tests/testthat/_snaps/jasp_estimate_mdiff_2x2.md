# jasp_estimate_mdiff_2x2 raw data bs design check tables and figures

    Code
      results[["results"]][[mytable]][["data"]]
    Output
      [[1]]
      [[1]]$grouping_variable_A_level
      [1] "More Practice"
      
      [[1]]$grouping_variable_B_level
      [1] "Control"
      
      [[1]]$mean
      [1] 37.25529
      
      [[1]]$mean_LL
      [1] 27.16039
      
      [[1]]$mean_UL
      [1] 47.35019
      
      [[1]]$median
      [1] 33.33
      
      [[1]]$n
      [1] 17
      
      [[1]]$outcome_variable_name
      [1] "Posttest"
      
      [[1]]$s_pooled
      [1] 20.68972
      
      [[1]]$sd
      [1] 18.41666
      
      
      [[2]]
      [[2]]$grouping_variable_A_level
      [1] "More Practice"
      
      [[2]]$grouping_variable_B_level
      [1] "Experimental"
      
      [[2]]$mean
      [1] 56.66643
      
      [[2]]$mean_LL
      [1] 45.54239
      
      [[2]]$mean_UL
      [1] 67.79047
      
      [[2]]$median
      [1] 56.665
      
      [[2]]$n
      [1] 14
      
      [[2]]$outcome_variable_name
      [1] "Posttest"
      
      [[2]]$s_pooled
      [1] 20.68972
      
      [[2]]$sd
      [1] 18.81284
      
      
      [[3]]
      [[3]]$grouping_variable_A_level
      [1] "Self-Explain"
      
      [[3]]$grouping_variable_B_level
      [1] "Control"
      
      [[3]]$mean
      [1] 51.76412
      
      [[3]]$mean_LL
      [1] 41.66922
      
      [[3]]$mean_UL
      [1] 61.85902
      
      [[3]]$median
      [1] 53.33
      
      [[3]]$n
      [1] 17
      
      [[3]]$outcome_variable_name
      [1] "Posttest"
      
      [[3]]$s_pooled
      [1] 20.68972
      
      [[3]]$sd
      [1] 23.27643
      
      
      [[4]]
      [[4]]$grouping_variable_A_level
      [1] "Self-Explain"
      
      [[4]]$grouping_variable_B_level
      [1] "Experimental"
      
      [[4]]$mean
      [1] 60
      
      [[4]]$mean_LL
      [1] 35.96933
      
      [[4]]$mean_UL
      [1] 84.03067
      
      [[4]]$median
      [1] 60
      
      [[4]]$n
      [1] 3
      
      [[4]]$outcome_variable_name
      [1] "Posttest"
      
      [[4]]$s_pooled
      [1] 20.68972
      
      [[4]]$sd
      [1] 26.67
      
      

---

    Code
      results[["results"]][[mytable]][["data"]]
    Output
      [[1]]
      [[1]]$LL
      [1] 42.8496
      
      [[1]]$UL
      [1] 68.91452
      
      [[1]]$effect_size
      [1] 55.88206
      
      [[1]]$effect_type
      [1] "<b> Main effect of Condition </b>"
      
      [[1]]$effects_complex
      [1] "Self-Explain"
      
      [[1]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[2]]
      [[2]]$LL
      [1] 39.45001
      
      [[2]]$UL
      [1] 54.47171
      
      [[2]]$effect_size
      [1] 46.96086
      
      [[2]]$effect_type
      [1] "<b> Main effect of Condition </b>"
      
      [[2]]$effects_complex
      [1] "More Practice"
      
      [[2]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[3]]
      [[3]]$LL
      [1] -6.120672
      
      [[3]]$UL
      [1] 23.96307
      
      [[3]]$effect_size
      [1] 8.921197
      
      [[3]]$effect_type
      [1] "<b> Main effect of Condition </b>"
      
      [[3]]$effects_complex
      [1] "<b> Self-Explain ‒ More Practice </b>"
      
      [[3]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[4]]
      [[4]]$LL
      [1] 45.09296
      
      [[4]]$UL
      [1] 71.57347
      
      [[4]]$effect_size
      [1] 58.33321
      
      [[4]]$effect_type
      [1] "<b> Main effect of VarB </b>"
      
      [[4]]$effects_complex
      [1] "Experimental"
      
      [[4]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[5]]
      [[5]]$LL
      [1] 37.37153
      
      [[5]]$UL
      [1] 51.64788
      
      [[5]]$effect_size
      [1] 44.50971
      
      [[5]]$effect_type
      [1] "<b> Main effect of VarB </b>"
      
      [[5]]$effects_complex
      [1] "Control"
      
      [[5]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[6]]
      [[6]]$LL
      [1] -1.218362
      
      [[6]]$UL
      [1] 28.86538
      
      [[6]]$effect_size
      [1] 13.82351
      
      [[6]]$effect_type
      [1] "<b> Main effect of VarB </b>"
      
      [[6]]$effects_complex
      [1] "<b> Experimental ‒ Control </b>"
      
      [[6]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[7]]
      [[7]]$LL
      [1] 35.96933
      
      [[7]]$UL
      [1] 84.03067
      
      [[7]]$effect_size
      [1] 60
      
      [[7]]$effect_type
      [1] "<b> Simple effect of VarB at Condition: Self-Explain </b>"
      
      [[7]]$effects_complex
      [1] "Self-Explain: Experimental"
      
      [[7]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[8]]
      [[8]]$LL
      [1] 41.66922
      
      [[8]]$UL
      [1] 61.85902
      
      [[8]]$effect_size
      [1] 51.76412
      
      [[8]]$effect_type
      [1] "<b> Simple effect of VarB at Condition: Self-Explain </b>"
      
      [[8]]$effects_complex
      [1] "Self-Explain: Control"
      
      [[8]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[9]]
      [[9]]$LL
      [1] -17.82904
      
      [[9]]$UL
      [1] 34.3008
      
      [[9]]$effect_size
      [1] 8.235882
      
      [[9]]$effect_type
      [1] "<b> Simple effect of VarB at Condition: Self-Explain </b>"
      
      [[9]]$effects_complex
      [1] "<b> Self-Explain: Experimental ‒ Control </b>"
      
      [[9]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[10]]
      [[10]]$LL
      [1] 45.54239
      
      [[10]]$UL
      [1] 67.79047
      
      [[10]]$effect_size
      [1] 56.66643
      
      [[10]]$effect_type
      [1] "<b> Simple effect of VarB at Condition: More Practice </b>"
      
      [[10]]$effects_complex
      [1] "More Practice: Experimental"
      
      [[10]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[11]]
      [[11]]$LL
      [1] 27.16039
      
      [[11]]$UL
      [1] 47.35019
      
      [[11]]$effect_size
      [1] 37.25529
      
      [[11]]$effect_type
      [1] "<b> Simple effect of VarB at Condition: More Practice </b>"
      
      [[11]]$effects_complex
      [1] "More Practice: Control"
      
      [[11]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[12]]
      [[12]]$LL
      [1] 4.389441
      
      [[12]]$UL
      [1] 34.43283
      
      [[12]]$effect_size
      [1] 19.41113
      
      [[12]]$effect_type
      [1] "<b> Simple effect of VarB at Condition: More Practice </b>"
      
      [[12]]$effects_complex
      [1] "<b> More Practice: Experimental ‒ Control </b>"
      
      [[12]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[13]]
      [[13]]$LL
      [1] -17.82904
      
      [[13]]$UL
      [1] 34.3008
      
      [[13]]$effect_size
      [1] 8.235882
      
      [[13]]$effect_type
      [1] "<b> Interaction of Condition and VarB </b>"
      
      [[13]]$effects_complex
      [1] "Self-Explain: Experimental ‒ Control"
      
      [[13]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[14]]
      [[14]]$LL
      [1] 4.389441
      
      [[14]]$UL
      [1] 34.43283
      
      [[14]]$effect_size
      [1] 19.41113
      
      [[14]]$effect_type
      [1] "<b> Interaction of Condition and VarB </b>"
      
      [[14]]$effects_complex
      [1] "More Practice: Experimental ‒ Control"
      
      [[14]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[15]]
      [[15]]$LL
      [1] -41.25899
      
      [[15]]$UL
      [1] 18.90849
      
      [[15]]$effect_size
      [1] -11.17525
      
      [[15]]$effect_type
      [1] "<b> Interaction of Condition and VarB </b>"
      
      [[15]]$effects_complex
      [1] "<b> Difference of differences </b>"
      
      [[15]]$outcome_variable_name
      [1] "Posttest"
      
      

---

    Code
      results[["results"]][[mytable]][["data"]]
    Output
      [[1]]
      [[1]]$LL
      [1] -0.2914094
      
      [[1]]$UL
      [1] 1.135503
      
      [[1]]$d_biased
      [1] 0.4311899
      
      [[1]]$denominator
      [1] 20.68972
      
      [[1]]$effect_size
      [1] 0.4242662
      
      [[1]]$effect_type
      [1] "Main effect of Condition"
      
      [[1]]$effects_complex
      [1] "Self-Explain ‒ More Practice"
      
      [[1]]$numerator
      [1] 8.921197
      
      [[1]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[2]]
      [[2]]$LL
      [1] -0.06657206
      
      [[2]]$UL
      [1] 1.374636
      
      [[2]]$d_biased
      [1] 0.6681342
      
      [[2]]$denominator
      [1] 20.68972
      
      [[2]]$effect_size
      [1] 0.6574059
      
      [[2]]$effect_type
      [1] "Main effect of VarB"
      
      [[2]]$effects_complex
      [1] "Experimental ‒ Control"
      
      [[2]]$numerator
      [1] 13.82351
      
      [[2]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[3]]
      [[3]]$LL
      [1] -0.8403095
      
      [[3]]$UL
      [1] 1.61952
      
      [[3]]$d_biased
      [1] 0.3980665
      
      [[3]]$denominator
      [1] 20.68972
      
      [[3]]$effect_size
      [1] 0.3916746
      
      [[3]]$effect_type
      [1] "Simple effect of VarB at Condition: Self-Explain"
      
      [[3]]$effects_complex
      [1] "Self-Explain: Experimental ‒ Control"
      
      [[3]]$numerator
      [1] 8.235882
      
      [[3]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[4]]
      [[4]]$LL
      [1] 0.1871101
      
      [[4]]$UL
      [1] 1.649979
      
      [[4]]$d_biased
      [1] 0.938202
      
      [[4]]$denominator
      [1] 20.68972
      
      [[4]]$effect_size
      [1] 0.9231372
      
      [[4]]$effect_type
      [1] "Simple effect of VarB at Condition: More Practice"
      
      [[4]]$effects_complex
      [1] "More Practice: Experimental ‒ Control"
      
      [[4]]$numerator
      [1] 19.41113
      
      [[4]]$outcome_variable_name
      [1] "Posttest"
      
      
      [[5]]
      [[5]]$LL
      [1] -1.949325
      
      [[5]]$UL
      [1] 0.8920078
      
      [[5]]$d_biased
      [1] -0.5401356
      
      [[5]]$denominator
      [1] 20.68972
      
      [[5]]$effect_size
      [1] -0.5314625
      
      [[5]]$effect_type
      [1] "Interaction of Condition and VarB"
      
      [[5]]$effects_complex
      [1] "Difference of differences"
      
      [[5]]$numerator
      [1] -11.17525
      
      [[5]]$outcome_variable_name
      [1] "Posttest"
      
      

---

    Code
      results[["results"]][[mytable]][["data"]]
    Output
      [[1]]
      [[1]]$CI
      [1] "95% CI [-6.120672, 23.96307]"
      
      [[1]]$CI_compare
      [1] "The 95% CI contains <i>H</i><sub>0</sub>"
      
      [[1]]$conclusion
      [1] "At α = 0.05, 0.00 remains a plausible value of μ<sub>diff</sub>"
      
      [[1]]$df
      [1] 47
      
      [[1]]$effect_type
      [1] "Main effect of Condition"
      
      [[1]]$effects_complex
      [1] "Self-Explain ‒ More Practice"
      
      [[1]]$null_decision
      [1] "Fail to reject <i>H</i><sub>0</sub>"
      
      [[1]]$null_words
      [1] "0.00"
      
      [[1]]$outcome_variable_name
      [1] "Posttest"
      
      [[1]]$p
      [1] 0.2388009
      
      [[1]]$t
      [1] 1.193145
      
      
      [[2]]
      [[2]]$CI
      [1] "95% CI [-1.218362, 28.86538]"
      
      [[2]]$CI_compare
      [1] "The 95% CI contains <i>H</i><sub>0</sub>"
      
      [[2]]$conclusion
      [1] "At α = 0.05, 0.00 remains a plausible value of μ<sub>diff</sub>"
      
      [[2]]$df
      [1] 47
      
      [[2]]$effect_type
      [1] "Main effect of VarB"
      
      [[2]]$effects_complex
      [1] "Experimental ‒ Control"
      
      [[2]]$null_decision
      [1] "Fail to reject <i>H</i><sub>0</sub>"
      
      [[2]]$null_words
      [1] "0.00"
      
      [[2]]$outcome_variable_name
      [1] "Posttest"
      
      [[2]]$p
      [1] 0.07078343
      
      [[2]]$t
      [1] 1.848794
      
      
      [[3]]
      [[3]]$CI
      [1] "95% CI [-17.82904, 34.3008]"
      
      [[3]]$CI_compare
      [1] "The 95% CI contains <i>H</i><sub>0</sub>"
      
      [[3]]$conclusion
      [1] "At α = 0.05, 0.00 remains a plausible value of μ<sub>diff</sub>"
      
      [[3]]$df
      [1] 47
      
      [[3]]$effect_type
      [1] "Simple effect of VarB at Condition: Self-Explain"
      
      [[3]]$effects_complex
      [1] "Self-Explain: Experimental ‒ Control"
      
      [[3]]$null_decision
      [1] "Fail to reject <i>H</i><sub>0</sub>"
      
      [[3]]$null_words
      [1] "0.00"
      
      [[3]]$outcome_variable_name
      [1] "Posttest"
      
      [[3]]$p
      [1] 0.5280804
      
      [[3]]$t
      [1] 0.6356612
      
      
      [[4]]
      [[4]]$CI
      [1] "95% CI [4.389441, 34.43283]"
      
      [[4]]$CI_compare
      [1] "The 95% CI does not contain <i>H</i><sub>0</sub>"
      
      [[4]]$conclusion
      [1] "At α = 0.05, 0.00 is not a plausible value of μ<sub>diff</sub>"
      
      [[4]]$df
      [1] 47
      
      [[4]]$effect_type
      [1] "Simple effect of VarB at Condition: More Practice"
      
      [[4]]$effects_complex
      [1] "More Practice: Experimental ‒ Control"
      
      [[4]]$null_decision
      [1] "Reject <i>H</i><sub>0</sub>"
      
      [[4]]$null_words
      [1] "0.00"
      
      [[4]]$outcome_variable_name
      [1] "Posttest"
      
      [[4]]$p
      [1] 0.01243327
      
      [[4]]$t
      [1] 2.599585
      
      
      [[5]]
      [[5]]$CI
      [1] "95% CI [-41.25899, 18.90849]"
      
      [[5]]$CI_compare
      [1] "The 95% CI contains <i>H</i><sub>0</sub>"
      
      [[5]]$conclusion
      [1] "At α = 0.05, 0.00 remains a plausible value of μ<sub>diffdiff</sub>"
      
      [[5]]$df
      [1] 47
      
      [[5]]$effect_type
      [1] "Interaction of Condition and VarB"
      
      [[5]]$effects_complex
      [1] "Difference of differences"
      
      [[5]]$null_decision
      [1] "Fail to reject <i>H</i><sub>0</sub>"
      
      [[5]]$null_words
      [1] "0.00"
      
      [[5]]$outcome_variable_name
      [1] "Posttest"
      
      [[5]]$p
      [1] 0.4586025
      
      [[5]]$t
      [1] -0.7473043
      
      

# jasp_estimate_mdiff_2x2 raw data mixed design check tables and figures

    Code
      results[["results"]][[mytable]][["data"]]
    Output
      [[1]]
      [[1]]$grouping_variable_A_level
      [1] "More Practice"
      
      [[1]]$grouping_variable_B_level
      [1] "Pretest"
      
      [[1]]$mean
      [1] 40.64581
      
      [[1]]$mean_LL
      [1] 33.21927
      
      [[1]]$mean_UL
      [1] 48.07234
      
      [[1]]$median
      [1] 40
      
      [[1]]$n
      [1] 31
      
      [[1]]$outcome_variable_name
      [1] "Test score"
      
      [[1]]$sd
      [1] 20.24667
      
      
      [[2]]
      [[2]]$grouping_variable_A_level
      [1] "More Practice"
      
      [[2]]$grouping_variable_B_level
      [1] "Posttest"
      
      [[2]]$mean
      [1] 46.02161
      
      [[2]]$mean_LL
      [1] 38.40936
      
      [[2]]$mean_UL
      [1] 53.63386
      
      [[2]]$median
      [1] 46.67
      
      [[2]]$n
      [1] 31
      
      [[2]]$outcome_variable_name
      [1] "Test score"
      
      [[2]]$sd
      [1] 20.75297
      
      
      [[3]]
      [[3]]$grouping_variable_A_level
      [1] "Self-Explain"
      
      [[3]]$grouping_variable_B_level
      [1] "Pretest"
      
      [[3]]$mean
      [1] 34.667
      
      [[3]]$mean_LL
      [1] 25.98313
      
      [[3]]$mean_UL
      [1] 43.35087
      
      [[3]]$median
      [1] 40
      
      [[3]]$n
      [1] 20
      
      [[3]]$outcome_variable_name
      [1] "Test score"
      
      [[3]]$sd
      [1] 18.55471
      
      
      [[4]]
      [[4]]$grouping_variable_A_level
      [1] "Self-Explain"
      
      [[4]]$grouping_variable_B_level
      [1] "Posttest"
      
      [[4]]$mean
      [1] 52.9995
      
      [[4]]$mean_LL
      [1] 42.12159
      
      [[4]]$mean_UL
      [1] 63.87741
      
      [[4]]$median
      [1] 56.665
      
      [[4]]$n
      [1] 20
      
      [[4]]$outcome_variable_name
      [1] "Test score"
      
      [[4]]$sd
      [1] 23.24267
      
      

---

    Code
      results[["results"]][[mytable]][["data"]]
    Output
      [[1]]
      [[1]]$LL
      [1] 35.00464
      
      [[1]]$UL
      [1] 52.66186
      
      [[1]]$effect_size
      [1] 43.83325
      
      [[1]]$effect_type
      [1] "<b> Main effect of Condition </b>"
      
      [[1]]$effects_complex
      [1] "Self-Explain"
      
      [[1]]$outcome_variable_name
      [1] "Test score"
      
      
      [[2]]
      [[2]]$LL
      [1] 36.13488
      
      [[2]]$UL
      [1] 50.53254
      
      [[2]]$effect_size
      [1] 43.33371
      
      [[2]]$effect_type
      [1] "<b> Main effect of Condition </b>"
      
      [[2]]$effects_complex
      [1] "More Practice"
      
      [[2]]$outcome_variable_name
      [1] "Test score"
      
      
      [[3]]
      [[3]]$LL
      [1] -10.59495
      
      [[3]]$UL
      [1] 11.59404
      
      [[3]]$effect_size
      [1] 0.4995403
      
      [[3]]$effect_type
      [1] "<b> Main effect of Condition </b>"
      
      [[3]]$effects_complex
      [1] "<b> Self-Explain ‒ More Practice </b>"
      
      [[3]]$outcome_variable_name
      [1] "Test score"
      
      
      [[4]]
      [[4]]$LL
      [1] 43.03303
      
      [[4]]$UL
      [1] 55.98808
      
      [[4]]$effect_size
      [1] 49.51056
      
      [[4]]$effect_type
      [1] "<b> Main effect of Time </b>"
      
      [[4]]$effects_complex
      [1] "Posttest"
      
      [[4]]$outcome_variable_name
      [1] "Test score"
      
      
      [[5]]
      [[5]]$LL
      [1] 32.09425
      
      [[5]]$UL
      [1] 43.21855
      
      [[5]]$effect_size
      [1] 37.6564
      
      [[5]]$effect_type
      [1] "<b> Main effect of Time </b>"
      
      [[5]]$effects_complex
      [1] "Pretest"
      
      [[5]]$outcome_variable_name
      [1] "Test score"
      
      
      [[6]]
      [[6]]$LL
      [1] 7.078153
      
      [[6]]$UL
      [1] 16.63015
      
      [[6]]$effect_size
      [1] 11.85415
      
      [[6]]$effect_type
      [1] "<b> Main effect of Time </b>"
      
      [[6]]$effects_complex
      [1] "<b> Posttest ‒ Pretest </b>"
      
      [[6]]$outcome_variable_name
      [1] "Test score"
      
      
      [[7]]
      [[7]]$LL
      [1] 42.12159
      
      [[7]]$UL
      [1] 63.87741
      
      [[7]]$effect_size
      [1] 52.9995
      
      [[7]]$effect_type
      [1] "<b> Simple effect of Time at Condition: Self-Explain </b>"
      
      [[7]]$effects_complex
      [1] "Self-Explain: Posttest"
      
      [[7]]$outcome_variable_name
      [1] "Test score"
      
      
      [[8]]
      [[8]]$LL
      [1] 25.98313
      
      [[8]]$UL
      [1] 43.35087
      
      [[8]]$effect_size
      [1] 34.667
      
      [[8]]$effect_type
      [1] "<b> Simple effect of Time at Condition: Self-Explain </b>"
      
      [[8]]$effects_complex
      [1] "Self-Explain: Pretest"
      
      [[8]]$outcome_variable_name
      [1] "Test score"
      
      
      [[9]]
      [[9]]$LL
      [1] 9.63194
      
      [[9]]$UL
      [1] 27.03306
      
      [[9]]$effect_size
      [1] 18.3325
      
      [[9]]$effect_type
      [1] "<b> Simple effect of Time at Condition: Self-Explain </b>"
      
      [[9]]$effects_complex
      [1] "<b> Self-Explain: Posttest ‒ Pretest </b>"
      
      [[9]]$outcome_variable_name
      [1] "Test score"
      
      
      [[10]]
      [[10]]$LL
      [1] 38.40936
      
      [[10]]$UL
      [1] 53.63386
      
      [[10]]$effect_size
      [1] 46.02161
      
      [[10]]$effect_type
      [1] "<b> Simple effect of Time at Condition: More Practice </b>"
      
      [[10]]$effects_complex
      [1] "More Practice: Posttest"
      
      [[10]]$outcome_variable_name
      [1] "Test score"
      
      
      [[11]]
      [[11]]$LL
      [1] 33.21927
      
      [[11]]$UL
      [1] 48.07234
      
      [[11]]$effect_size
      [1] 40.64581
      
      [[11]]$effect_type
      [1] "<b> Simple effect of Time at Condition: More Practice </b>"
      
      [[11]]$effects_complex
      [1] "More Practice: Pretest"
      
      [[11]]$outcome_variable_name
      [1] "Test score"
      
      
      [[12]]
      [[12]]$LL
      [1] 1.027574
      
      [[12]]$UL
      [1] 9.724039
      
      [[12]]$effect_size
      [1] 5.375806
      
      [[12]]$effect_type
      [1] "<b> Simple effect of Time at Condition: More Practice </b>"
      
      [[12]]$effects_complex
      [1] "<b> More Practice: Posttest ‒ Pretest </b>"
      
      [[12]]$outcome_variable_name
      [1] "Test score"
      
      
      [[13]]
      [[13]]$LL
      [1] 9.63194
      
      [[13]]$UL
      [1] 27.03306
      
      [[13]]$effect_size
      [1] 18.3325
      
      [[13]]$effect_type
      [1] "<b> Interaction of Condition and Time </b>"
      
      [[13]]$effects_complex
      [1] "Self-Explain: Posttest ‒ Pretest"
      
      [[13]]$outcome_variable_name
      [1] "Test score"
      
      
      [[14]]
      [[14]]$LL
      [1] 1.027574
      
      [[14]]$UL
      [1] 9.724039
      
      [[14]]$effect_size
      [1] 5.375806
      
      [[14]]$effect_type
      [1] "<b> Interaction of Condition and Time </b>"
      
      [[14]]$effects_complex
      [1] "More Practice: Posttest ‒ Pretest"
      
      [[14]]$outcome_variable_name
      [1] "Test score"
      
      
      [[15]]
      [[15]]$LL
      [1] 3.404693
      
      [[15]]$UL
      [1] 22.50869
      
      [[15]]$effect_size
      [1] 12.95669
      
      [[15]]$effect_type
      [1] "<b> Interaction of Condition and Time </b>"
      
      [[15]]$effects_complex
      [1] "<b> Difference of differences </b>"
      
      [[15]]$outcome_variable_name
      [1] "Test score"
      
      

---

    Code
      results[["results"]][[mytable]][["data"]]
    Output
      NULL

---

    Code
      results[["results"]][[mytable]][["data"]]
    Output
      [[1]]
      [[1]]$CI
      [1] "95% CI [-10.59495, 11.59404]"
      
      [[1]]$CI_compare
      [1] "The 95% CI contains <i>H</i><sub>0</sub>"
      
      [[1]]$conclusion
      [1] "At α = 0.05, 0.00 remains a plausible value of μ<sub>diff</sub>"
      
      [[1]]$df
      [1] 41.87032
      
      [[1]]$effect_type
      [1] "Main effect of Condition"
      
      [[1]]$effects_complex
      [1] "Self-Explain ‒ More Practice"
      
      [[1]]$null_decision
      [1] "Fail to reject <i>H</i><sub>0</sub>"
      
      [[1]]$null_words
      [1] "0.00"
      
      [[1]]$outcome_variable_name
      [1] "Test score"
      
      [[1]]$p
      [1] 0.9280257
      
      [[1]]$t
      [1] 0.09087441
      
      
      [[2]]
      [[2]]$CI
      [1] "95% CI [7.078153, 16.63015]"
      
      [[2]]$CI_compare
      [1] "The 95% CI does not contain <i>H</i><sub>0</sub>"
      
      [[2]]$conclusion
      [1] "At α = 0.05, 0.00 is not a plausible value of μ<sub>diff</sub>"
      
      [[2]]$df
      [1] 29.01171
      
      [[2]]$effect_type
      [1] "Main effect of Time"
      
      [[2]]$effects_complex
      [1] "Posttest ‒ Pretest"
      
      [[2]]$null_decision
      [1] "Reject <i>H</i><sub>0</sub>"
      
      [[2]]$null_words
      [1] "0.00"
      
      [[2]]$outcome_variable_name
      [1] "Test score"
      
      [[2]]$p
      [1] 2.050103e-05
      
      [[2]]$t
      [1] 5.076223
      
      
      [[3]]
      [[3]]$CI
      [1] "95% CI [9.63194, 27.03306]"
      
      [[3]]$CI_compare
      [1] "The 95% CI does not contain <i>H</i><sub>0</sub>"
      
      [[3]]$conclusion
      [1] "At α = 0.05, 0.00 is not a plausible value of μ<sub>diff</sub>"
      
      [[3]]$df
      [1] 19
      
      [[3]]$effect_type
      [1] "Simple effect of Time at Condition: Self-Explain"
      
      [[3]]$effects_complex
      [1] "Self-Explain: Posttest ‒ Pretest"
      
      [[3]]$null_decision
      [1] "Reject <i>H</i><sub>0</sub>"
      
      [[3]]$null_words
      [1] "0.00"
      
      [[3]]$outcome_variable_name
      [1] "Test score"
      
      [[3]]$p
      [1] 0.0003007304
      
      [[3]]$t
      [1] 4.410103
      
      
      [[4]]
      [[4]]$CI
      [1] "95% CI [1.027574, 9.724039]"
      
      [[4]]$CI_compare
      [1] "The 95% CI does not contain <i>H</i><sub>0</sub>"
      
      [[4]]$conclusion
      [1] "At α = 0.05, 0.00 is not a plausible value of μ<sub>diff</sub>"
      
      [[4]]$df
      [1] 30
      
      [[4]]$effect_type
      [1] "Simple effect of Time at Condition: More Practice"
      
      [[4]]$effects_complex
      [1] "More Practice: Posttest ‒ Pretest"
      
      [[4]]$null_decision
      [1] "Reject <i>H</i><sub>0</sub>"
      
      [[4]]$null_words
      [1] "0.00"
      
      [[4]]$outcome_variable_name
      [1] "Test score"
      
      [[4]]$p
      [1] 0.01709441
      
      [[4]]$t
      [1] 2.524902
      
      
      [[5]]
      [[5]]$CI
      [1] "95% CI [3.404693, 22.50869]"
      
      [[5]]$CI_compare
      [1] "The 95% CI does not contain <i>H</i><sub>0</sub>"
      
      [[5]]$conclusion
      [1] "At α = 0.05, 0.00 is not a plausible value of μ<sub>diffdiff</sub>"
      
      [[5]]$df
      [1] 29.01171
      
      [[5]]$effect_type
      [1] "Interaction of Condition and Time"
      
      [[5]]$effects_complex
      [1] "Difference of differences"
      
      [[5]]$null_decision
      [1] "Reject <i>H</i><sub>0</sub>"
      
      [[5]]$null_words
      [1] "0.00"
      
      [[5]]$outcome_variable_name
      [1] "Test score"
      
      [[5]]$p
      [1] 0.009577562
      
      [[5]]$t
      [1] 2.774178
      
      

# jasp_estimate_mdiff_2x2 summary data check tables and figures

    Code
      results[["results"]][[mytable]][["data"]]
    Output
      [[1]]
      [[1]]$df
      [1] 76
      
      [[1]]$grouping_variable_A_level
      [1] "A1 level"
      
      [[1]]$grouping_variable_B_level
      [1] "B1 level"
      
      [[1]]$mean
      [1] 10
      
      [[1]]$mean_LL
      [1] 8.996723
      
      [[1]]$mean_SE
      [1] 0.503736
      
      [[1]]$mean_UL
      [1] 11.00328
      
      [[1]]$moe
      [1] 1.003277
      
      [[1]]$n
      [1] 20
      
      [[1]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[1]]$s_pooled
      [1] 2.252776
      
      [[1]]$sd
      [1] 2.1
      
      
      [[2]]
      [[2]]$df
      [1] 76
      
      [[2]]$grouping_variable_A_level
      [1] "A1 level"
      
      [[2]]$grouping_variable_B_level
      [1] "B2 level"
      
      [[2]]$mean
      [1] 15
      
      [[2]]$mean_LL
      [1] 13.99672
      
      [[2]]$mean_SE
      [1] 0.503736
      
      [[2]]$mean_UL
      [1] 16.00328
      
      [[2]]$moe
      [1] 1.003277
      
      [[2]]$n
      [1] 20
      
      [[2]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[2]]$s_pooled
      [1] 2.252776
      
      [[2]]$sd
      [1] 2.3
      
      
      [[3]]
      [[3]]$df
      [1] 76
      
      [[3]]$grouping_variable_A_level
      [1] "A2 level"
      
      [[3]]$grouping_variable_B_level
      [1] "B1 level"
      
      [[3]]$mean
      [1] 10
      
      [[3]]$mean_LL
      [1] 8.996723
      
      [[3]]$mean_SE
      [1] 0.503736
      
      [[3]]$mean_UL
      [1] 11.00328
      
      [[3]]$moe
      [1] 1.003277
      
      [[3]]$n
      [1] 20
      
      [[3]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[3]]$s_pooled
      [1] 2.252776
      
      [[3]]$sd
      [1] 2.2
      
      
      [[4]]
      [[4]]$df
      [1] 76
      
      [[4]]$grouping_variable_A_level
      [1] "A2 level"
      
      [[4]]$grouping_variable_B_level
      [1] "B2 level"
      
      [[4]]$mean
      [1] 10
      
      [[4]]$mean_LL
      [1] 8.996723
      
      [[4]]$mean_SE
      [1] 0.503736
      
      [[4]]$mean_UL
      [1] 11.00328
      
      [[4]]$moe
      [1] 1.003277
      
      [[4]]$n
      [1] 20
      
      [[4]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[4]]$s_pooled
      [1] 2.252776
      
      [[4]]$sd
      [1] 2.4
      
      

---

    Code
      results[["results"]][[mytable]][["data"]]
    Output
      [[1]]
      [[1]]$LL
      [1] 9.290576
      
      [[1]]$SE
      [1] 0.3561952
      
      [[1]]$UL
      [1] 10.70942
      
      [[1]]$df
      [1] 76
      
      [[1]]$effect_size
      [1] 10
      
      [[1]]$effect_type
      [1] "<b> Main effect of Variable A </b>"
      
      [[1]]$effects_complex
      [1] "A2 level"
      
      [[1]]$moe
      [1] 0.7094242
      
      [[1]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[1]]$s_component
      [1] 2.252776
      
      
      [[2]]
      [[2]]$LL
      [1] 11.79058
      
      [[2]]$SE
      [1] 0.3561952
      
      [[2]]$UL
      [1] 13.20942
      
      [[2]]$df
      [1] 76
      
      [[2]]$effect_size
      [1] 12.5
      
      [[2]]$effect_type
      [1] "<b> Main effect of Variable A </b>"
      
      [[2]]$effects_complex
      [1] "A1 level"
      
      [[2]]$moe
      [1] 0.7094242
      
      [[2]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[2]]$s_component
      [1] 2.252776
      
      
      [[3]]
      [[3]]$LL
      [1] -3.503277
      
      [[3]]$SE
      [1] 0.503736
      
      [[3]]$UL
      [1] -1.496723
      
      [[3]]$df
      [1] 76
      
      [[3]]$effect_size
      [1] -2.5
      
      [[3]]$effect_type
      [1] "<b> Main effect of Variable A </b>"
      
      [[3]]$effects_complex
      [1] "<b> A2 level ‒ A1 level </b>"
      
      [[3]]$moe
      [1] 1.003277
      
      [[3]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[3]]$s_component
      [1] 2.252776
      
      
      [[4]]
      [[4]]$LL
      [1] 11.79058
      
      [[4]]$SE
      [1] 0.3561952
      
      [[4]]$UL
      [1] 13.20942
      
      [[4]]$df
      [1] 76
      
      [[4]]$effect_size
      [1] 12.5
      
      [[4]]$effect_type
      [1] "<b> Main effect of Variable B </b>"
      
      [[4]]$effects_complex
      [1] "B2 level"
      
      [[4]]$moe
      [1] 0.7094242
      
      [[4]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[4]]$s_component
      [1] 2.252776
      
      
      [[5]]
      [[5]]$LL
      [1] 9.290576
      
      [[5]]$SE
      [1] 0.3561952
      
      [[5]]$UL
      [1] 10.70942
      
      [[5]]$df
      [1] 76
      
      [[5]]$effect_size
      [1] 10
      
      [[5]]$effect_type
      [1] "<b> Main effect of Variable B </b>"
      
      [[5]]$effects_complex
      [1] "B1 level"
      
      [[5]]$moe
      [1] 0.7094242
      
      [[5]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[5]]$s_component
      [1] 2.252776
      
      
      [[6]]
      [[6]]$LL
      [1] 1.496723
      
      [[6]]$SE
      [1] 0.503736
      
      [[6]]$UL
      [1] 3.503277
      
      [[6]]$df
      [1] 76
      
      [[6]]$effect_size
      [1] 2.5
      
      [[6]]$effect_type
      [1] "<b> Main effect of Variable B </b>"
      
      [[6]]$effects_complex
      [1] "<b> B2 level ‒ B1 level </b>"
      
      [[6]]$moe
      [1] 1.003277
      
      [[6]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[6]]$s_component
      [1] 2.252776
      
      
      [[7]]
      [[7]]$LL
      [1] 8.996723
      
      [[7]]$SE
      [1] 0.503736
      
      [[7]]$UL
      [1] 11.00328
      
      [[7]]$df
      [1] 76
      
      [[7]]$effect_size
      [1] 10
      
      [[7]]$effect_type
      [1] "<b> Simple effect of Variable B at Variable A: A2 level </b>"
      
      [[7]]$effects_complex
      [1] "A2 level: B2 level"
      
      [[7]]$moe
      [1] 1.003277
      
      [[7]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[7]]$s_component
      [1] 2.252776
      
      
      [[8]]
      [[8]]$LL
      [1] 8.996723
      
      [[8]]$SE
      [1] 0.503736
      
      [[8]]$UL
      [1] 11.00328
      
      [[8]]$df
      [1] 76
      
      [[8]]$effect_size
      [1] 10
      
      [[8]]$effect_type
      [1] "<b> Simple effect of Variable B at Variable A: A2 level </b>"
      
      [[8]]$effects_complex
      [1] "A2 level: B1 level"
      
      [[8]]$moe
      [1] 1.003277
      
      [[8]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[8]]$s_component
      [1] 2.252776
      
      
      [[9]]
      [[9]]$LL
      [1] -1.418848
      
      [[9]]$SE
      [1] 0.7123903
      
      [[9]]$UL
      [1] 1.418848
      
      [[9]]$df
      [1] 76
      
      [[9]]$effect_size
      [1] 0
      
      [[9]]$effect_type
      [1] "<b> Simple effect of Variable B at Variable A: A2 level </b>"
      
      [[9]]$effects_complex
      [1] "<b> A2 level: B2 level ‒ B1 level </b>"
      
      [[9]]$moe
      [1] 1.418848
      
      [[9]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[9]]$s_component
      [1] 2.252776
      
      
      [[10]]
      [[10]]$LL
      [1] 13.99672
      
      [[10]]$SE
      [1] 0.503736
      
      [[10]]$UL
      [1] 16.00328
      
      [[10]]$df
      [1] 76
      
      [[10]]$effect_size
      [1] 15
      
      [[10]]$effect_type
      [1] "<b> Simple effect of Variable B at Variable A: A1 level </b>"
      
      [[10]]$effects_complex
      [1] "A1 level: B2 level"
      
      [[10]]$moe
      [1] 1.003277
      
      [[10]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[10]]$s_component
      [1] 2.252776
      
      
      [[11]]
      [[11]]$LL
      [1] 8.996723
      
      [[11]]$SE
      [1] 0.503736
      
      [[11]]$UL
      [1] 11.00328
      
      [[11]]$df
      [1] 76
      
      [[11]]$effect_size
      [1] 10
      
      [[11]]$effect_type
      [1] "<b> Simple effect of Variable B at Variable A: A1 level </b>"
      
      [[11]]$effects_complex
      [1] "A1 level: B1 level"
      
      [[11]]$moe
      [1] 1.003277
      
      [[11]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[11]]$s_component
      [1] 2.252776
      
      
      [[12]]
      [[12]]$LL
      [1] 3.581152
      
      [[12]]$SE
      [1] 0.7123903
      
      [[12]]$UL
      [1] 6.418848
      
      [[12]]$df
      [1] 76
      
      [[12]]$effect_size
      [1] 5
      
      [[12]]$effect_type
      [1] "<b> Simple effect of Variable B at Variable A: A1 level </b>"
      
      [[12]]$effects_complex
      [1] "<b> A1 level: B2 level ‒ B1 level </b>"
      
      [[12]]$moe
      [1] 1.418848
      
      [[12]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[12]]$s_component
      [1] 2.252776
      
      
      [[13]]
      [[13]]$LL
      [1] -1.418848
      
      [[13]]$SE
      [1] 0.7123903
      
      [[13]]$UL
      [1] 1.418848
      
      [[13]]$df
      [1] 76
      
      [[13]]$effect_size
      [1] 0
      
      [[13]]$effect_type
      [1] "<b> Interaction of Variable A and Variable B </b>"
      
      [[13]]$effects_complex
      [1] "A2 level: B2 level ‒ B1 level"
      
      [[13]]$moe
      [1] 1.418848
      
      [[13]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[13]]$s_component
      [1] 2.252776
      
      
      [[14]]
      [[14]]$LL
      [1] 3.581152
      
      [[14]]$SE
      [1] 0.7123903
      
      [[14]]$UL
      [1] 6.418848
      
      [[14]]$df
      [1] 76
      
      [[14]]$effect_size
      [1] 5
      
      [[14]]$effect_type
      [1] "<b> Interaction of Variable A and Variable B </b>"
      
      [[14]]$effects_complex
      [1] "A1 level: B2 level ‒ B1 level"
      
      [[14]]$moe
      [1] 1.418848
      
      [[14]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[14]]$s_component
      [1] 2.252776
      
      
      [[15]]
      [[15]]$LL
      [1] -7.006555
      
      [[15]]$SE
      [1] 1.007472
      
      [[15]]$UL
      [1] -2.993445
      
      [[15]]$df
      [1] 76
      
      [[15]]$effect_size
      [1] -5
      
      [[15]]$effect_type
      [1] "<b> Interaction of Variable A and Variable B </b>"
      
      [[15]]$effects_complex
      [1] "<b> Difference of differences </b>"
      
      [[15]]$moe
      [1] 2.006555
      
      [[15]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[15]]$s_component
      [1] 2.252776
      
      

---

    Code
      results[["results"]][[mytable]][["data"]]
    Output
      [[1]]
      [[1]]$LL
      [1] -1.567291
      
      [[1]]$SE
      [1] 0.2406577
      
      [[1]]$UL
      [1] -0.6239313
      
      [[1]]$d_biased
      [1] -1.109742
      
      [[1]]$denominator
      [1] 2.252776
      
      [[1]]$df
      [1] 76
      
      [[1]]$effect_size
      [1] -1.098748
      
      [[1]]$effect_type
      [1] "Main effect of Variable A"
      
      [[1]]$effects_complex
      [1] "A2 level ‒ A1 level"
      
      [[1]]$numerator
      [1] -2.5
      
      [[1]]$outcome_variable_name
      [1] "My outcome variable"
      
      
      [[2]]
      [[2]]$LL
      [1] 0.6239313
      
      [[2]]$SE
      [1] 0.2406577
      
      [[2]]$UL
      [1] 1.567291
      
      [[2]]$d_biased
      [1] 1.109742
      
      [[2]]$denominator
      [1] 2.252776
      
      [[2]]$df
      [1] 76
      
      [[2]]$effect_size
      [1] 1.098748
      
      [[2]]$effect_type
      [1] "Main effect of Variable B"
      
      [[2]]$effects_complex
      [1] "B2 level ‒ B1 level"
      
      [[2]]$numerator
      [1] 2.5
      
      [[2]]$outcome_variable_name
      [1] "My outcome variable"
      
      
      [[3]]
      [[3]]$LL
      [1] -0.619795
      
      [[3]]$SE
      [1] 0.3162278
      
      [[3]]$UL
      [1] 0.619795
      
      [[3]]$d_biased
      [1] 0
      
      [[3]]$denominator
      [1] 2.252776
      
      [[3]]$df
      [1] 76
      
      [[3]]$effect_size
      [1] 0
      
      [[3]]$effect_type
      [1] "Simple effect of Variable B at Variable A: A2 level"
      
      [[3]]$effects_complex
      [1] "A2 level: B2 level ‒ B1 level"
      
      [[3]]$numerator
      [1] 0
      
      [[3]]$outcome_variable_name
      [1] "My outcome variable"
      
      
      [[4]]
      [[4]]$LL
      [1] 1.480758
      
      [[4]]$SE
      [1] 0.362856
      
      [[4]]$UL
      [1] 2.903118
      
      [[4]]$d_biased
      [1] 2.219484
      
      [[4]]$denominator
      [1] 2.252776
      
      [[4]]$df
      [1] 76
      
      [[4]]$effect_size
      [1] 2.197497
      
      [[4]]$effect_type
      [1] "Simple effect of Variable B at Variable A: A1 level"
      
      [[4]]$effects_complex
      [1] "A1 level: B2 level ‒ B1 level"
      
      [[4]]$numerator
      [1] 5
      
      [[4]]$outcome_variable_name
      [1] "My outcome variable"
      
      
      [[5]]
      [[5]]$LL
      [1] -3.134582
      
      [[5]]$SE
      [1] 0.4813154
      
      [[5]]$UL
      [1] -1.247863
      
      [[5]]$d_biased
      [1] -2.219484
      
      [[5]]$denominator
      [1] 2.252776
      
      [[5]]$df
      [1] 76
      
      [[5]]$effect_size
      [1] -2.197497
      
      [[5]]$effect_type
      [1] "Interaction of Variable A and Variable B"
      
      [[5]]$effects_complex
      [1] "Difference of differences"
      
      [[5]]$numerator
      [1] -5
      
      [[5]]$outcome_variable_name
      [1] "My outcome variable"
      
      

---

    Code
      results[["results"]][[mytable]][["data"]]
    Output
      [[1]]
      [[1]]$CI
      [1] "95% CI [-3.503277, -1.496723]"
      
      [[1]]$CI_compare
      [1] "The 95% CI does not contain <i>H</i><sub>0</sub>"
      
      [[1]]$conclusion
      [1] "At α = 0.05, 0.00 is not a plausible value of μ<sub>diff</sub>"
      
      [[1]]$df
      [1] 76
      
      [[1]]$effect_type
      [1] "Main effect of Variable A"
      
      [[1]]$effects_complex
      [1] "A2 level ‒ A1 level"
      
      [[1]]$null_decision
      [1] "Reject <i>H</i><sub>0</sub>"
      
      [[1]]$null_words
      [1] "0.00"
      
      [[1]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[1]]$p
      [1] 4.141335e-06
      
      [[1]]$t
      [1] -4.962917
      
      
      [[2]]
      [[2]]$CI
      [1] "95% CI [1.496723, 3.503277]"
      
      [[2]]$CI_compare
      [1] "The 95% CI does not contain <i>H</i><sub>0</sub>"
      
      [[2]]$conclusion
      [1] "At α = 0.05, 0.00 is not a plausible value of μ<sub>diff</sub>"
      
      [[2]]$df
      [1] 76
      
      [[2]]$effect_type
      [1] "Main effect of Variable B"
      
      [[2]]$effects_complex
      [1] "B2 level ‒ B1 level"
      
      [[2]]$null_decision
      [1] "Reject <i>H</i><sub>0</sub>"
      
      [[2]]$null_words
      [1] "0.00"
      
      [[2]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[2]]$p
      [1] 4.141335e-06
      
      [[2]]$t
      [1] 4.962917
      
      
      [[3]]
      [[3]]$CI
      [1] "95% CI [-1.418848, 1.418848]"
      
      [[3]]$CI_compare
      [1] "The 95% CI contains <i>H</i><sub>0</sub>"
      
      [[3]]$conclusion
      [1] "At α = 0.05, 0.00 remains a plausible value of μ<sub>diff</sub>"
      
      [[3]]$df
      [1] 76
      
      [[3]]$effect_type
      [1] "Simple effect of Variable B at Variable A: A2 level"
      
      [[3]]$effects_complex
      [1] "A2 level: B2 level ‒ B1 level"
      
      [[3]]$null_decision
      [1] "Fail to reject <i>H</i><sub>0</sub>"
      
      [[3]]$null_words
      [1] "0.00"
      
      [[3]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[3]]$p
      [1] 1
      
      [[3]]$t
      [1] 0
      
      
      [[4]]
      [[4]]$CI
      [1] "95% CI [3.581152, 6.418848]"
      
      [[4]]$CI_compare
      [1] "The 95% CI does not contain <i>H</i><sub>0</sub>"
      
      [[4]]$conclusion
      [1] "At α = 0.05, 0.00 is not a plausible value of μ<sub>diff</sub>"
      
      [[4]]$df
      [1] 76
      
      [[4]]$effect_type
      [1] "Simple effect of Variable B at Variable A: A1 level"
      
      [[4]]$effects_complex
      [1] "A1 level: B2 level ‒ B1 level"
      
      [[4]]$null_decision
      [1] "Reject <i>H</i><sub>0</sub>"
      
      [[4]]$null_words
      [1] "0.00"
      
      [[4]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[4]]$p
      [1] 8.099369e-10
      
      [[4]]$t
      [1] 7.018624
      
      
      [[5]]
      [[5]]$CI
      [1] "95% CI [-7.006555, -2.993445]"
      
      [[5]]$CI_compare
      [1] "The 95% CI does not contain <i>H</i><sub>0</sub>"
      
      [[5]]$conclusion
      [1] "At α = 0.05, 0.00 is not a plausible value of μ<sub>diffdiff</sub>"
      
      [[5]]$df
      [1] 76
      
      [[5]]$effect_type
      [1] "Interaction of Variable A and Variable B"
      
      [[5]]$effects_complex
      [1] "Difference of differences"
      
      [[5]]$null_decision
      [1] "Reject <i>H</i><sub>0</sub>"
      
      [[5]]$null_words
      [1] "0.00"
      
      [[5]]$outcome_variable_name
      [1] "My outcome variable"
      
      [[5]]$p
      [1] 4.141335e-06
      
      [[5]]$t
      [1] -4.962917
      
      

