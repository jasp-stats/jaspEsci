jasp_correlation_table_depends_on <- function() {
  return(
    c(
      "x",
      "y",
      "r",
      "n",
      "conf_level",
      "x_variable_name",
      "y_variable_name",
      "show_details",
      "switch",
      "comparison_r",
      "reference_r",
      "comparison_n",
      "reference_n",
      "grouping_variable_name",
      "grouping_variable",
      "comparison_level_name",
      "reference_level_name"
    )
  )
}

jasp_scatterplot_depends_on <- function() {
  return(
    c(
      jasp_correlation_table_depends_on(),
      "show_line",
      "show_line_CI",
      "show_PI",
      "show_residuals",
      "show_mean_lines",
      "plot_as_z",
      "show_r",
      "predict_from_x",
      "do_regression",
      "x",
      "y",
      "grouping_variable",
      "sp_plot_width",
      "sp_plot_height",
      "sp_ylab",
      "sp_axis.text.y",
      "sp_axis.title.y",
      "sp_ymin",
      "sp_ymax",
      "sp_ybreaks",
      "sp_xlab",
      "sp_axis.text.x",
      "sp_axis.title.x",
      "sp_xmin",
      "sp_xmax",
      "sp_xbreaks",
      "show_mean_lines",
      "plot_as_z",
      "show_r",
      "sp_shape_raw_reference",
      "sp_color_raw_reference",
      "sp_fill_raw_reference",
      "sp_size_raw_reference",
      "sp_alpha_raw_reference",
      "sp_linetype_summary_reference",
      "sp_linetype_PI_reference",
      "sp_linetype_residual_reference",
      "sp_size_summary_reference",
      "sp_size_PI_reference",
      "sp_size_residual_reference",
      "sp_color_summary_reference",
      "sp_color_PI_reference",
      "sp_color_residual_reference",
      "sp_alpha_summary_reference",
      "sp_alpha_PI_reference",
      "sp_alpha_residual_reference",
      "sp_shape_raw_comparison",
      "sp_color_raw_comparison",
      "sp_fill_raw_comparison",
      "sp_size_raw_comparison",
      "sp_alpha_raw_comparison",
      "sp_linetype_summary_comparison",
      "sp_linetype_PI_comparison",
      "sp_linetype_residual_comparison",
      "sp_size_summary_comparison",
      "sp_size_PI_comparison",
      "sp_size_residual_comparison",
      "sp_color_summary_comparison",
      "sp_color_PI_comparison",
      "sp_color_residual_comparison",
      "sp_alpha_summary_comparison",
      "sp_alpha_PI_comparison",
      "sp_alpha_residual_comparison",
      "sp_shape_raw_unused",
      "sp_color_raw_unused",
      "sp_fill_raw_unused",
      "sp_size_raw_unused",
      "sp_alpha_raw_unused",
      "sp_linetype_summary_unused",
      "sp_linetype_PI_unused",
      "sp_linetype_residual_unused",
      "sp_size_summary_unused",
      "sp_size_PI_unused",
      "sp_size_residual_unused",
      "sp_color_summary_unused",
      "sp_color_PI_unused",
      "sp_color_residual_unused",
      "sp_alpha_summary_unused",
      "sp_alpha_PI_comparison",
      "sp_alpha_residual_comparison",
      "sp_prediction_label",
      "sp_prediction_color",
      "sp_linetype_ref",
      "sp_linetype_PI",
      "sp_linetype_CI",
      "sp_size_ref",
      "sp_size_PI",
      "sp_size_CI",
      "sp_color_ref",
      "sp_color_PI",
      "sp_color_CI",
      "sp_alpha_ref",
      "sp_alpha_PI",
      "sp_alpha_CI"
    )
  )
}

jasp_es_r_prep <- function(jaspResults, options, ready, paired = FALSE, difference = FALSE) {
  # Handles
  from_raw <- options$switch == "from_raw"

  gvn <- NULL
  if (!is.null(options$grouping_variable)) gvn <- options$grouping_variable
  if (!from_raw) gvn <- jasp_text_fix(options, "grouping_variable_name", "Grouping variable")

  effect_title <- if (is.null(gvn))
    gettext("Effect")
  else
    if (difference) gvn else paste(gvn, gettext("Effect"), "</BR>")

  if (paired) effect_title <- gettext("Measures")

  table_title <- if (is.null(options$grouping_variable) & !paired)
    gettext("Linear Correlation")
  else
    gettext("Correlation Between Paired Measures")


  overviewTable <- createJaspTable(title = table_title)

  overviewTable$dependOn(jasp_correlation_table_depends_on())

  if (!paired) {
    overviewTable$addColumnInfo(
      name = "x_variable_name",
      title = gettext("<i>X</i> variable"),
      type = "string",
      combine = TRUE
    )

    overviewTable$addColumnInfo(
      name = "y_variable_name",
      title = gettext("<i>Y</i> variable"),
      type = "string",
      combine = TRUE
    )

  }

  overviewTable$addColumnInfo(
    name = "effect",
    title = effect_title,
    type = "string"
  )

  overviewTable$addColumnInfo(
    name = "effect_size",
    title = "<i>r</i>",
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

  if (from_raw &  is.null(options$grouping_variable) & !paired) {
    overviewTable$addColumnInfo(
      name = "syx",
      title = "<i>s<sub>Y.X</sub></i>",
      type = "number"
    )

  }

  if (options$show_details) {
    overviewTable$addColumnInfo(
      name = "SE",
      title = if (paired) "<i>SE</i>" else "<i>SE<sub>r</sub></i>",
      type = "number"
    )

  }

  overviewTable$addColumnInfo(
    name = "n",
    title = if (paired) "<i>N</i><sub>pairs</sub>" else "<i>n</i><sub>pairs</sub>",
    type = "integer"
  )

  overviewTable$addColumnInfo(
    name = "df",
    title = "<i>df</i>",
    type = "integer"
  )


  overviewTable$showSpecifiedColumnsOnly <- TRUE


  if (ready) {
      overviewTable$setExpectedSize(1)
  }

  jaspResults[["es_r"]] <- overviewTable



  return()

}




jasp_regression_prep <- function(jaspResults, options, ready) {
  # Handles

  overviewTable <- createJaspTable(title = gettext("Regression"))

  overviewTable$dependOn(c(jasp_correlation_table_depends_on(), "do_regression"))

  overviewTable$addColumnInfo(
    name = "component",
    title = gettext("Component"),
    type = "string",
    combine = TRUE
  )

  overviewTable$addColumnInfo(
    name = "values",
    title = gettext("Value"),
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


  if (ready) {
    overviewTable$setExpectedSize(1)
  }

  jaspResults[["regression"]] <- overviewTable



  return()

}



jasp_es_r_difference_prep <- function(jaspResults, options, ready) {
  # Handles
  from_raw <- options$switch == "from_raw"

  effect_title <- "Effect"

  effect_title <- if (from_raw)
    paste(options$grouping_variable, "Effect", "<BR>")
  else
    paste(jasp_text_fix(options, "grouping_variable_name", "Grouping variable"), "Effect", "<BR>")

  table_title <- gettext("Difference in Correlation")

  overviewTable <- createJaspTable(title = table_title)

  overviewTable$dependOn(jasp_correlation_table_depends_on())

  overviewTable$addColumnInfo(
    name = "x_variable_name",
    title = gettext("<i>X</i>-variable"),
    type = "string",
    combine = TRUE
  )

  overviewTable$addColumnInfo(
    name = "y_variable_name",
    title = gettext("<i>Y</i>-variable"),
    type = "string",
    combine = TRUE
  )

  overviewTable$addColumnInfo(
    name = "effect",
    title = effect_title,
    type = "string"
  )

  overviewTable$addColumnInfo(
    name = "effect_size",
    title = "<i>r</i>",
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


  overviewTable$addColumnInfo(
    name = "n",
    title = "<i>n</i><sub>pairs</sub>",
    type = "integer"
  )

  overviewTable$addColumnInfo(
    name = "df",
    title = "<i>df</i>",
    type = "integer"
  )


  overviewTable$showSpecifiedColumnsOnly <- TRUE


  if (ready) {
    overviewTable$setExpectedSize(3)
  }

  jaspResults[["es_r_difference"]] <- overviewTable



  return()

}
