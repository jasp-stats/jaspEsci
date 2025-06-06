jasp_meta_table_depends_on <- function() {
  return(
    c(
      "means",
      "sds",
      "ns",
      "labels",
      "moderator",
      "ds",
      "r",
      "conf_level",
      "effect_label",
      "reference_mean",
      "reported_effect_size",
      "show_details",
      "random_effects",
      "include_PIs",
      "switch",
      "from_raw",
      "reference_means",
      "reference_sds",
      "reference_ns",
      "comparison_means",
      "comparison_sds",
      "comparison_ns",
      "assume_equal_variance"
    )
  )
}

# Prep an meta analysis raw_data table
jasp_meta_raw_data_prep <- function(jaspResults, options, ready, estimate = NULL, effect_size = "mean") {
  from_raw <- FALSE
  if (!is.null(options$switch)) {
    from_raw <- options$switch == "from_raw"
  }

  reported_effect_size <- ""
  if (!is.null(options$reported_effect_size)) {
      reported_effect_size <- options$reported_effect_size
  }

  has_moderator <- options$moderator != ""
  has_estimate <- !is.null(estimate)

  aev <- TRUE
  if (!is.null(options$assume_equal_variance)) {
    aev <- options$assume_equal_variance
  }

  overviewTable <- createJaspTable(title = gettext("Table of Studies"))


  overviewTable$dependOn(
    jasp_meta_table_depends_on()
  )


  overviewTable$addColumnInfo(
    name = "label",
    title = gettext("Study label"),
    type = "string"
  )

  if (has_moderator) {
    overviewTable$addColumnInfo(
      name = "moderator",
      title = gettext("Moderator level"),
      type = "string"
    )
  }

  e_title <- if (has_estimate) estimate$properties$effect_size_name_html else gettext("Effect size")
  e_title <- gsub("Mean", "<i>M</i>", e_title)
  e_title <- gsub("<sub>H</sub>", "<sub><i>h</i></sub>", e_title)

  overviewTable$addColumnInfo(
    name = "effect_size",
    title = e_title,
    type = "number"
  )

  overviewTable$addColumnInfo(
    name = "LL",
    title = "LL",
    type = "number",
    overtitle = paste0(100 * options$conf_level, "% CI")
  )
  overviewTable$addColumnInfo(
    name = "UL",
    title = "UL",
    type = "number",
    overtitle = paste0(100 * options$conf_level, "% CI")
  )

  if (effect_size == "r") {
    overviewTable$addColumnInfo(
      name = "N",
      title = "<i>N</i>",
      type = "integer"
    )

  }

  if (options$show_details) {
      w_title <- if (options$random_effects == "fixed_effects") gettext("FE weight") else gettext("RE weight")

      overviewTable$addColumnInfo(
        name = "weight",
        title = w_title,
        type = "number"
      )

  } # end show details for all effect sizes


  if (options$show_details & effect_size == "r") {
    overviewTable$addColumnInfo(
      name = "z",
      title = "<i>Z</i><sub><i>r</i></sub>",
      type = "number"
    )

    overviewTable$addColumnInfo(
      name = "SE",
      title = "<i>SE</i><sub><i>Z</i></sub>",
      type = "number"
    )

    overviewTable$addColumnInfo(
      name = "sample_variance",
      title = "<i>SE</i><sup>2</sup><sub><i>Z</i></sub>",
      type = "number"
    )

    overviewTable$addColumnInfo(
      name = "t",
      title = "<i>t</i>",
      type = "number"
    )


    overviewTable$addColumnInfo(
      name = "p",
      title = "<i>p</i>, two tailed",
      type = "pvalue"
    )

  }  # end show details for r


  if (options$show_details & effect_size %in% c("mdiff", "mean", "proportion", "pdiff")) {
    plus_sub <- if (effect_size %in% c("pdiff", "proportion")) "<sub>proportion</sub>" else ""

    overviewTable$addColumnInfo(
      name = "SE",
      title = paste("<i>SE</i>", plus_sub, sep = ""),
      type = "number"
    )

    overviewTable$addColumnInfo(
      name = "sample_variance",
      title = paste("<i>SE</i><sup>2</sup>",plus_sub, sep = ""),
      type = "number"
    )

  }  # end show details common to mdiff and mean


  if (options$show_details & effect_size %in% c("proportion")) {
    overviewTable$addColumnInfo(
      name = "cases",
      title = gettext("Cases"),
      type = "integer"
    )

    overviewTable$addColumnInfo(
      name = "N",
      title = "<i>N</i>",
      type = "integer"
    )

    overviewTable$addColumnInfo(
      name = "P_adjusted",
      title = "<i>P</i><sub>adjusted</sub>",
      type = "number"
    )

  }  # end show details for proportion


  if (options$show_details & effect_size %in% c("pdiff")) {
    overviewTable$addColumnInfo(
      name = "reference_P",
      title = "<i>P</i><sub>reference</sub>",
      type = "number"
    )

    overviewTable$addColumnInfo(
      name = "reference_cases",
      title = gettext("Cases<sub>reference</sub>"),
      type = "integer"
    )

    overviewTable$addColumnInfo(
      name = "reference_N",
      title = "<i>N</i><sub>reference</sub>",
      type = "integer"
    )

    overviewTable$addColumnInfo(
      name = "comparison_P",
      title = "<i>P</i><sub>comparison</sub>",
      type = "number"
    )

    overviewTable$addColumnInfo(
      name = "comparison_cases",
      title = gettext("Cases<sub>comparison</sub>"),
      type = "integer"
    )

    overviewTable$addColumnInfo(
      name = "comparison_N",
      title = "<i>N</i><sub>comparison</sub>",
      type = "integer"
    )


  }  # end show details for pdiff


  if (options$show_details & from_raw & reported_effect_size != "mean_difference" & effect_size == "mean") {
          overviewTable$addColumnInfo(
            name = "mean",
            title = "<i>M</i>",
            type = "number"
          )

          overviewTable$addColumnInfo(
            name = "sd",
            title = "<i>s</i>",
            type = "number"
          )

          overviewTable$addColumnInfo(
            name = "n",
            title = "<i>N</i>",
            type = "integer"
          )

          overviewTable$addColumnInfo(
            name = "p",
            title = "<i>p</i>, two tailed",
            type = "pvalue"
          )
   } # end show details for mean when from raw and d reported

   if (options$show_details & effect_size == "mdiff") {
          if (from_raw) {
            overviewTable$addColumnInfo(
              name = "reference_mean",
              title = "<i>M</i><sub>reference</sub>",
              type = "number"
            )

            overviewTable$addColumnInfo(
              name = "reference_sd",
              title = "<i>s</i><sub>reference</sub>",
              type = "number"
            )

          }

          overviewTable$addColumnInfo(
            name = "reference_n",
            title = "<i>n</i><sub>reference</sub>",
            type = "integer"
          )

          if (from_raw) {
            overviewTable$addColumnInfo(
              name = "comparison_mean",
              title = "<i>M</i><sub>comparison</sub>",
              type = "number"
            )

            overviewTable$addColumnInfo(
              name = "comparison_sd",
              title = "<i>s</i><sub>comparison</sub>",
              type = "number"
            )

          }

          overviewTable$addColumnInfo(
            name = "comparison_n",
            title = "<i>n</i><sub>comparison</sub>",
            type = "integer"
          )


          if (!is.null(options$r)) {
            if (options$r != "") {
              overviewTable$addColumnInfo(
                name = "r",
                title = "<i>r</i>",
                type = "number"
              )

            }

          }


          if (aev) {
            overviewTable$addColumnInfo(
              name = "df",
              title = "<i>df</i>",
              type = "integer"
            )

          } else {
            overviewTable$addColumnInfo(
              name = "df",
              title = "<i>df</i>",
              type = "number",
              format = "dp:1"
            )
          }

          overviewTable$addColumnInfo(
            name = "p",
            title = "<i>p</i>, two tailed",
            type = "pvalue"
          )

  }  # end show details for mdiff



  overviewTable$showSpecifiedColumnsOnly <- TRUE

  if (ready & has_estimate)
    overviewTable$setExpectedSize(nrow(estimate$raw_data))

  jaspResults[["meta_raw_dataTable"]] <- overviewTable

  jaspResults[["meta_raw_dataTable"]]$position <- 10

  return()

}


jasp_es_meta_data_prep <- function(jaspResults, options, ready, estimate = NULL, effect_size = "mean") {

  from_raw <- options$switch == "from_raw"
  has_moderator <- options$moderator != ""
  has_estimate <- !is.null(estimate)


  overviewTable <- createJaspTable(title = gettext("Meta-Analytic Effect Sizes"))

  overviewTable$dependOn(
    jasp_meta_table_depends_on()
  )


  overviewTable$addColumnInfo(
    name = "effect_label",
    title = gettext("Effect"),
    type = "string",
    combine = TRUE
  )

  if (has_moderator) {
    overviewTable$addColumnInfo(
      name = "moderator_variable_name",
      title = gettext("Moderator"),
      type = "string",
      combine = TRUE
    )

    overviewTable$addColumnInfo(
      name = "moderator_variable_level",
      title = gettext("Level"),
      type = "string"
    )

  }


  e_title <- if (has_estimate) estimate$properties$effect_size_name_html else gettext("Effect size")
  e_title <- gsub("Mean", "<i>M</i>", e_title)
  e_title <- gsub("<sub>H</sub>", "<sub><i>h</i></sub>", e_title)


  overviewTable$addColumnInfo(
    name = "effect_size",
    title = e_title,
    type = "number"
  )


  overviewTable$addColumnInfo(
    name = "LL",
    title = "LL",
    type = "number",
    overtitle = paste0(100 * options$conf_level, "% CI")
  )
  overviewTable$addColumnInfo(
    name = "UL",
    title = "UL",
    type = "number",
    overtitle = paste0(100 * options$conf_level, "% CI")
  )

  if (options$show_details) {
    w_title <- if (options$random_effects == "fixed_effects") "FE weight" else "RE weight"

    overviewTable$addColumnInfo(
      name = "SE",
      title = "<i>SE</i>",
      type = "number"
    )

  }

  overviewTable$addColumnInfo(
    name = "k",
    title = "<i>k</i>",
    type = "integer"
  )

  if (options$include_PIs & options$random_effects == "random_effects") {
    overviewTable$addColumnInfo(
      name = "PI_LL",
      title = "LL",
      type = "number",
      overtitle = paste0(100 * options$conf_level, "% PI")
    )
    overviewTable$addColumnInfo(
      name = "PI_UL",
      title = "UL",
      type = "number",
      overtitle = paste0(100 * options$conf_level, "% PI")
    )
  }

  if (options$show_details) {
    overviewTable$addColumnInfo(
      name = "p",
      title = "<i>p</i>, two tailed",
      type = "pvalue"
    )
  }

  if (options$random_effects == "compare" | options$show_details) {
      overviewTable$addColumnInfo(
        name = "FE_CI_width",
        title = "FE CI length",
        type = "number"
      )

      overviewTable$addColumnInfo(
        name = "RE_CI_width",
        title = "RE CI length",
        type = "number"
      )


  }


  if (options$random_effects == "compare") {
    overviewTable$addColumnInfo(
      name = "FE_effect_size",
      title = "FE effect size",
      type = "number"
    )

    overviewTable$addColumnInfo(
      name = "RE_effect_size",
      title = "RE effect size",
      type = "number"
    )

  }


  if (options$show_details & effect_size == "r") {
    overviewTable$addColumnInfo(
      name = "z",
      title = "<i>Z</i><sub><i>r</i></sub>",
      type = "number"
    )
  }

  overviewTable$showSpecifiedColumnsOnly <- TRUE

  if (ready & has_estimate)
    overviewTable$setExpectedSize(nrow(estimate$es_meta))

  jaspResults[["es_metaTable"]] <- overviewTable
  jaspResults[["es_metaTable"]]$position <- 20


  return()

}


jasp_es_heterogeneity_data_prep <- function(jaspResults, options, ready, levels = 1) {

  from_raw <- options$switch == "from_raw"
  has_moderator <- options$moderator != ""


  overviewTable <- createJaspTable(title = gettext("Effect Size Heterogeneity"))


  overviewTable$dependOn(
    jasp_meta_table_depends_on()
  )


  overviewTable$addColumnInfo(
    name = "measure_html",
    title = gettext("Measure"),
    type = "string",
    combine = TRUE
  )

  if (has_moderator) {
      overviewTable$addColumnInfo(
      name = "moderator_level",
      title = gettext("Level"),
      type = "string",
      combine = TRUE
    )

  }

  overviewTable$addColumnInfo(
    name = "estimate",
    title = gettext("Estimate"),
    type = "number"
  )

  overviewTable$addColumnInfo(
    name = "LL",
    title = "LL",
    type = "number",
    overtitle = paste0(100 * options$conf_level, "% CI")
  )
  overviewTable$addColumnInfo(
    name = "UL",
    title = "UL",
    type = "number",
    overtitle = paste0(100 * options$conf_level, "% CI")
  )

  overviewTable$showSpecifiedColumnsOnly <- TRUE

  if (ready) overviewTable$setExpectedSize(levels)

  jaspResults[["es_heterogeneityTable"]] <- overviewTable
  jaspResults[["es_heterogeneityTable"]]$position <- 30


  return()

}


jasp_es_meta_difference_prep <- function(jaspResults, options, ready, estimate, effect_size = "mean") {

  from_raw <- options$switch == "from_raw"
  has_moderator <- options$moderator != ""
  has_estimate <- !is.null(estimate)


  overviewTable <- createJaspTable(title = gettext("Moderator Analysis"))

  overviewTable$dependOn(
    jasp_meta_table_depends_on()
  )


  overviewTable$addColumnInfo(
    name = "effect_label",
    title = gettext("Effect"),
    type = "string",
    combine = TRUE
  )

  if (has_moderator) {
    overviewTable$addColumnInfo(
      name = "moderator_variable_name",
      title = gettext("Moderator"),
      type = "string",
      combine = TRUE
    )

    overviewTable$addColumnInfo(
      name = "moderator_level",
      title = gettext("Level"),
      type = "string"
    )

  }


  e_title <- if (has_estimate) estimate$properties$effect_size_name_html else "Effect size"
  e_title <- gsub("Mean", "<i>M</i>", e_title)
  e_title <- gsub("<sub>H</sub>", "<sub><i>h</i></sub>", e_title)

  overviewTable$addColumnInfo(
    name = "effect_size",
    title = e_title,
    type = "number"
  )


  overviewTable$addColumnInfo(
    name = "LL",
    title = "LL",
    type = "number",
    overtitle = paste0(100 * options$conf_level, "% CI")
  )
  overviewTable$addColumnInfo(
    name = "UL",
    title = "UL",
    type = "number",
    overtitle = paste0(100 * options$conf_level, "% CI")
  )

  if (options$show_details) {
    overviewTable$addColumnInfo(
      name = "SE",
      title = "<i>SE</i>",
      type = "number"
    )

    overviewTable$addColumnInfo(
      name = "p",
      title = "<i>p</i>, two tailed",
      type = "pvalue"
    )


  }


  if (options$show_details & effect_size == "r") {
    overviewTable$addColumnInfo(
      name = "z",
      title = "<i>Z</i><sub><i>r</i></sub>",
      type = "number"
    )
  }


  overviewTable$showSpecifiedColumnsOnly <- TRUE

  if (ready)
    overviewTable$setExpectedSize(nrow(estimate$es_meta_difference))

  jaspResults[["es_meta_differenceTable"]] <- overviewTable

  jaspResults[["es_meta_differenceTable"]]$position <- 40


  return()

}
