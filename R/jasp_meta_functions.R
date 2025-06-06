jasp_meta_notes <- function(options, estimate = NULL, reference_mean = NULL, jaspResults = NULL) {

  # Handles
  self <- list()
  self$options <- options

  estimate$es_heterogeneity[estimate$es_heterogeneity$moderator_level != "Overall" & estimate$es_heterogeneity$measure == "Diamond Ratio", c("LL", "UL")] <- NA

  estimate$es_heterogeneity$measure_html <- jasp_heterogeneity_to_html(
    estimate$es_heterogeneity$measure
  )

  has_aev <- !is.null(options$assume_equal_variance)
  has_switch <- !is.null(options$switch)
  if (has_switch) {
    from_raw <- options$switch == "from_raw"
  } else {
    from_raw <- FALSE
  }

  is_rd <- FALSE
  if (!is.null(options$reported_effect_size)) {
    if (options$reported_effect_size == "RD") is_rd <- TRUE
  }


  # Update column headings if reference mean was used
  ref_note <- NULL
  if (!is.null(reference_mean)) {
      ref_note <- paste(
        "Effect sizes are relative to a reference value of ",
        format(reference_mean, digits = 2),
        ".<br>",
        sep = ""
      )
  }


  # aev note
  aev_note <- NULL
  aev <- TRUE
  if (has_aev) {
    aev <- self$options$assume_equal_variance
    if (aev) {
      aev_note <- gettext("Effect sizes calculated assuming equal variance.<br>")
    } else {
      aev_note <- gettext("Effect sizes calculated without assuming equal variance.<br>")
    }
  }


  # Tbl note
  model_note <- if(self$options$random_effects != "fixed_effects")
    gettext("Estimate is based on a random effects (RE) model.")
  else
    gettext("Estimate is based on a fixed effect (FE) model.")


  correction_note <- NULL
  smd_reported <- FALSE
  if (has_switch) {
    if (from_raw) {
      if (self$options$reported_effect_size == "smd_unbiased") {
        smd_reported <- TRUE
        correction_note <- paste(
          "  The standardized mean difference (",
          estimate$properties$effect_size_name_html,
          ") has been corrected for sampling bias.<br>",
          sep = ""
        )
      }
    } else {
      smd_reported <- TRUE

      correction_warning <- NULL
      if (!aev) {
        correction_warning <- gettext("With equal variace not assumed, studies with unequal sample sizes will not have perfect recovery of sampling variance; use equal variance assumption or original units input if this matters to you.")
      }


      correction_note <- paste(
        gettext("This analysis expected the inputted Cohen's <i>d</i> values to already be corrected for bias ("),
        estimate$properties$effect_size_name_html,
        ").  ",
        correction_warning,
        "<br>",
        sep = ""
      )

    }
  }

  if (smd_reported & is.null(reference_mean) & !is.null(options$means)) {
    ref_note <- paste(
      gettext("Effect sizes are relative to a reference value of "),
      0,
      ".<br>",
      sep = ""
    )
  }


  meta_note <- paste(
    ref_note,
    aev_note,
    correction_note,
    model_note,
    " "
  )

  raw_note <- paste(
    ref_note,
    aev_note,
    if (is_rd) gettext("<i>P</i><sub>diff</sub> is calculated as <i>P</i><sub>comparison</sub> - <i>P</i><sub>reference</sub>") else NULL,
    " "
  )


  estimate$es_meta_properties <- list(
    message_html = meta_note
  )

  if (!is.null(estimate$es_meta_difference)) {
    estimate$es_meta_difference_properties <- list(
      message_html = meta_note
    )
  }

  estimate$raw_data_properties <- list(
    message_html = raw_note
  )

  if (!is.null(estimate$warnings)) {
    lerror_text <- createJaspHtml(
      paste(
        estimate$warnings,
        sep = "<BR>"
      ),
      title = "Warning!"
    )
    # To do: why does depenOn throw an error?
    lerror_text$dependOn(jasp_meta_table_depends_on())
    jaspResults[["estimate_warnings"]] <- lerror_text
    jaspResults[["estimate_warnings"]]$position <- -5

  }

  return(estimate)

}


jasp_heterogeneity_to_html <- function(measures) {
  for (x in 1:length(measures)) {
    measures[[x]] <- switch(
      measures[[x]],
      'tau^2' = "<i>𝜏</i><sup>2</sup>",
      'tau' = "<i>𝜏</i>",
      'I^2(%)'  = "<i>I</i><sup>2</sup>(%)",
      'H^2' = "<i>H</i><sup>2</sup>",
      "Diamond Ratio" = "Diamond Ratio",
      "heterogneity"
    )
  }

  return(measures)

}



jasp_forest_plot_prep <- function(jaspResults, options) {

  my_title <- "Forest Plot"

  mdiffPlot <- createJaspPlot(
    title = my_title,
    width = options$width,
    height = options$height
  )

  mytypes <- c("shape", "size", "color", "fill", "alpha", "linetype")
  myobjs <- c("summary", "raw", "interval", "error")
  mycontrast <- c("reference", "comparison", "difference", "unused", "overall")

  mydepends <- apply(expand.grid(mytypes, myobjs, mycontrast), 1, paste, collapse="_")

  mdiffPlot$dependOn(
    c(
      jasp_meta_table_depends_on(),
      "conf_level",
      "assume_equal_variance",
      "effect_size",
      "width",
      "height",
      "mark_zero",
      "meta_diamond_height",
      "report_CIs",
      "ylab",
      "xlab",
      "axis.text.y",
      "axis.title.y",
      "axis.text.x",
      "axis.title.x",
      "simple_contrast_labels",
      "xmin",
      "xmax",
      "xbreaks",
      "dlab",
      "dmin",
      "dmax",
      "dbreaks",
      "difference_axis_units",
      "difference_axis_breaks",
      "size_base",
      "size_multiplier",
      mydepends,
      "shape_summary",
      "size_summary",
      "color_summary",
      "fill_summary",
      "alpha_summary",
      "linetype_summary",
      "size_interval",
      "color_interval",
      "alpha_interval",
      "fill_error",
      "alpha_error",
      "shape_raw",
      "size_raw",
      "color_raw",
      "fill_raw",
      "alpha_raw",
      "null_color",
      "switch"
    )
  )

  jaspResults[["forest_plot"]] <- mdiffPlot

  return()

}
