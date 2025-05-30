jasp_estimate_mdiff_paired <- function(jaspResults, dataset = NULL, options, ...) {

  # Handles
  from_raw <- options$switch == "from_raw"
  evaluate_h <- options$evaluate_hypotheses
  is_interval <- if (options$null_boundary > 0) TRUE else FALSE
  neg_errors <- FALSE
  is_mean <- if (options$effect_size == "mean_difference") TRUE else FALSE

  ready <- FALSE
  if (from_raw) {
    ready <- options$reference_measure != "" & options$comparison_measure != ""
  } else {

    jasp_summary_dirty(options$summary_dirty, jaspResults)

    # Need any summary data checks?  Maybe not
    ready <- TRUE
    # Over-ride effect size if summary data is being analyzed
    options$effect_size <- "mean_difference"
    # Also over-ride request to show ratio
    options$show_ratio <- FALSE
  }


  if (ready & !from_raw) {

  }

  if (from_raw & ready) {
    # read dataset
    dataset <- jasp_estimate_mdiff_paired_read_data(dataset, options)

    # If show_ratio, no negative values
    if (options$show_ratio) {
      neg_errors <- .hasErrors(
        dataset = dataset,
        type = c("negativeValues"),
        all.target = c(options$reference_measure, options$comparison_measure),
        exitAnalysisIfErrors = FALSE
      )

      if (isa(neg_errors, "list")) {
        error_text <- createJaspHtml(
          paste(
            neg_errors,
            gettext("The ratio between group effect size is appropriate only for true ratio scales where values < 0 are impossible.  One or more of your measures includes at least one negative value, so the requested ratio effect size is not reported."),
            sep = "<BR>"
          ),
          title = gettext("Warning!")
        )
        error_text$dependOn(c("reference_measure", "comparison_measure", "show_ratio"))
        jaspResults[["neg_errors"]] <- error_text
      }
    }

  }

  if (ready) {
    # Run the analysis
    args <- list()
    self <- list()
    self$options <- options

    call <- esci::estimate_mdiff_paired
    args$conf_level <- self$options$conf_level

    if (from_raw) {
      args$data <- dataset
      args$reference_measure <- unname(self$options$reference_measure)
      args$comparison_measure <- unname(self$options$comparison_measure)
      args$save_raw_data <- TRUE

    } else {

      args$reference_mean <- self$options$reference_mean
      args$reference_sd <- self$options$reference_sd
      args$n <- self$options$n
      args$comparison_mean <- options$comparison_mean
      args$comparison_sd <- self$options$comparison_sd
      args$correlation <- self$options$correlation
      args$comparison_measure_name <- jasp_text_fix(
        options,
        "comparison_measure_name",
        "Comparison measure"
      )
      args$reference_measure_name <- jasp_text_fix(
        options,
        "reference_measure_name",
        "Reference measure"
      )

    }

    estimate <- try(do.call(what = call, args = args))

    # Some results tweaks - future updates to esci will do these calcs within esci rather than here
    # Add in MoE
    estimate$es_mean_difference$moe <- (estimate$es_mean_difference$UL - estimate$es_mean_difference$LL)/2
    estimate$overview$moe <- (estimate$overview$mean_UL - estimate$overview$mean_LL)/2

    # Add calculation details
    alpha <- 1 - self$options$conf_level
    estimate$es_mean_difference$t_multiplier <- stats::qt(1-alpha/2, estimate$es_mean_difference$df)
    estimate$es_mean_difference$n_component <- 1/sqrt(estimate$es_mean_difference$df+1)
    estimate$es_mean_difference$s_component <- estimate$es_mean_difference$moe / estimate$es_mean_difference$t_multiplier / estimate$es_mean_difference$n_component



    if(evaluate_h & is.null(jaspResults[["heTable"]])) {
      mytest <- jasp_test_mdiff(
        options,
        estimate
      )
    } else {
      mytest <- NULL
    }


  }

  options$assume_equal_variance <- FALSE


  # Overview
  if (is.null(jaspResults[["overviewTable"]])) {
    jasp_overview_prep(
      jaspResults,
      options,
      ready,
      if (ready) estimate else NULL,
      level = 1,
      paired = TRUE
    )

    jaspResults[["overviewTable"]]$position <- 1

    if (ready) {
      jasp_table_fill(
        jaspResults[["overviewTable"]],
        estimate,
        "overview"
      )
    }
  }



  # r table
  if(is.null(jaspResults[["es_r"]])) {
    jasp_es_r_prep(
      jaspResults = jaspResults,
      options = options,
      ready = ready,
      paired = TRUE
    )

    jaspResults[["es_r"]]$position <- 20


    if (ready) jasp_table_fill(
      jaspResults[["es_r"]],
      estimate,
      "es_r"
    )

    jaspResults[["es_r"]]$dependOn(
      jasp_mdiff_table_depends_on()
    )
  }



  # Define and fill out the m_diff table (mean or median)
  if (is.null(jaspResults[["es_m_differenceTable"]])) {

    jasp_es_m_difference_prep(
      jaspResults,
      options,
      ready,
      if (ready) estimate else NULL,
      paired = TRUE
    )

    jaspResults[["es_m_differenceTable"]]$position <- 30

    to_fill <- if (is_mean) "es_mean_difference" else "es_median_difference"

    if (ready) jasp_table_fill(
      jaspResults[["es_m_differenceTable"]],
      estimate,
      to_fill
    )

    if (ready & is_mean) jaspResults[["es_m_differenceTable"]]$addFootnote(
      paste(
        "<i>s</i><sub>diff</sub> = ",
        format(estimate$es_mean_difference$s_component[[3]], 2),
        sep = ""
      )
    )


  }


  # Define and fill the smd table
  if (is_mean & is.null(jaspResults[["smdTable"]]) ) {
    jasp_smd_prep(
      jaspResults,
      options = options,
      ready = ready,
      estimate = if (ready) estimate else NULL,
      one_group = FALSE,
      is_paired = TRUE
    )


    jaspResults[["smdTable"]]$position <- 40

    if (ready) jasp_table_fill(
      jaspResults[["smdTable"]],
      estimate,
      "es_smd"
    )

  }



  # Define and fill out the m_diff table (mean or median)
  if (options$show_ratio & from_raw & is.null(jaspResults[["es_m_ratioTable"]])) {
    if (isa(neg_errors, "logical")) {

      if (ready) {
        mylevels <- c(
        unname(self$options$reference_measure),
        unname(self$options$comparison_measure)
        )
      } else {
        mylevels <- NULL
      }


      jasp_es_m_ratio_prep(
        jaspResults,
        options = options,
        ready = ready,
        estimate = if (ready) estimate else NULL,
        levels = if(ready) mylevels else NULL,
        is_paired = TRUE
      )

      jaspResults[["es_m_ratioTable"]]$position <- 50

      to_fill <- if (is_mean) "es_mean_ratio" else "es_median_ratio"

      if (ready) jasp_table_fill(
        jaspResults[["es_m_ratioTable"]],
        estimate,
        to_fill
      )

    }
  }


  # Hypothesis evaluation table and smd table
  if(evaluate_h & is.null(jaspResults[["heTable"]])) {
    jasp_he_prep(
      jaspResults,
      options = options,
      read = ready,
      mytest = mytest,
      show_outcome_variable = FALSE,
      paired = TRUE
    )

    jaspResults[["heTable"]]$position <- 60

    if (ready) jasp_table_fill(
      jaspResults[["heTable"]],
      mytest,
      "to_fill"
    )

  }

  # Now prep and fill the plot
  if (is.null(jaspResults[["mdiffPlot"]])) {
      jasp_plot_m_prep(
        jaspResults,
        options,
        ready,
        my_variable = "mdiffPlot",
        add_citation = TRUE
      )

    jaspResults[["mdiffPlot"]]$position <- 70

      if (ready) {
        effect_size = options$effect_size
        if (effect_size == "mean_difference") effect_size <- "mean"
        if (effect_size == "median_difference") effect_size <- "median"

        args <- list()
        args$estimate <- estimate
        args$effect_size <- effect_size
        args$data_layout <- options$data_layout
        args$data_spread <- options$data_spread
        args$error_layout <- options$error_layout
        args$error_scale <- options$error_scale
        args$error_nudge <- options$error_nudge

        args$difference_axis_units <- self$options$difference_axis_units

        args$difference_axis_breaks <- jasp_numeric_fix(options, "difference_axis_breaks", 5)
        if (args$difference_axis_breaks < 2) args$difference_axis_breaks <- 2
        if (args$difference_axis_breaks > 50) args$difference_axies_breaks <- 50

        args$difference_axis_space <- 0.5
        args$simple_contrast_labels <- self$options$simple_contrast_labels

        ylim <- c(NA, NA)

        if (!(options$ymin %in% c("auto", "Auto", "AUTO", ""))) {
          try(ylim[[1]] <- as.numeric(options$ymin))
        }

        if (!(options$ymax %in% c("auto", "Auto", "AUTO", ""))) {
          try(ylim[[2]] <- as.numeric(options$ymax))
        }

        ybreaks <- NULL
        if (!(options$ybreaks %in% c("auto", "Auto", "AUTO", ""))) {
          try(ybreaks <- as.numeric(options$ybreaks))
          if (is.na(ybreaks)) ybreaks <- NULL
        }

        args$ylim <- ylim
        args$ybreaks <- ybreaks

        args$rope_units <- "raw"
        try(args$rope_units <- self$options$rope_units, silent = TRUE)

        if (evaluate_h) {
          args$rope <- c(
            options$null_value - options$null_boundary,
            options$null_value + options$null_boundary
          )
        }

        myplot <- do.call(
          what = esci::plot_mdiff,
          args = args
        )

        #apply aesthetics
        myplot <- jasp_plot_mdiff_decorate(myplot, options)

        jaspResults[["mdiffPlot"]]$plotObject <- myplot

      }  # end plot creation

  } # end plot prep

  return()
}



jasp_estimate_mdiff_paired_read_data <- function(dataset, options) {
  if (!is.null(dataset))
    return(dataset)
  else
    return(
      .readDataSetToEnd(
        columns.as.numeric = c(options$reference_measure, options$comparison_measure)
      )
    )
}

