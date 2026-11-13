#
# Copyright (C) 2013-2025 University of Amsterdam
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# This is a generated file. Don't change it!

#' ESCI Means and Medians: 2x2 Factorial
#'
jasp_estimate_mdiff_2x2 <- function(
          data = NULL,
          version = "1",
          A1B1_mean = 10,
          A1B1_n = 20,
          A1B1_sd = 2.1,
          A1B2_mean = 15,
          A1B2_n = 20,
          A1B2_sd = 2.3,
          A1_label = "",
          A2B1_mean = 10,
          A2B1_n = 20,
          A2B1_sd = 2.2,
          A2B2_mean = 10,
          A2B2_n = 20,
          A2B2_sd = 2.4,
          A2_label = "",
          A_label = "",
          B1_label = "",
          B2_label = "",
          B_label = "",
          alpha_error_comparison = 0,
          alpha_error_difference = 0,
          alpha_error_reference = 0,
          alpha_error_unused = 0,
          alpha_interval_comparison = 0,
          alpha_interval_difference = 0,
          alpha_interval_reference = 0,
          alpha_interval_unused = 0,
          alpha_raw_comparison = 0,
          alpha_raw_reference = 0,
          alpha_raw_unused = 0,
          alpha_summary_comparison = 0,
          alpha_summary_difference = 0,
          alpha_summary_reference = 0,
          alpha_summary_unused = 0,
          assume_equal_variance = TRUE,
          axis.text.x = 14,
          axis.text.y = 14,
          axis.title.x = 15,
          axis.title.y = 15,
          color_interval_comparison = "black",
          color_interval_difference = "black",
          color_interval_reference = "black",
          color_interval_unused = "gray65",
          color_raw_comparison = "#009F81",
          color_raw_reference = "#008DF9",
          color_raw_unused = "gray65",
          color_summary_comparison = "#009F81",
          color_summary_difference = "black",
          color_summary_reference = "#008DF9",
          color_summary_unused = "gray65",
          conf_level = 0.95,
          data_layout = "random",
          data_spread = 0.2,
          design = "fully_between",
          difference_axis_breaks = "",
          difference_axis_units = "raw",
          effect_size = "mean_difference",
          error_layout = "halfeye",
          error_nudge = 0.5,
          error_scale = 0.25,
          evaluate_hypotheses = FALSE,
          fill_error_comparison = "gray75",
          fill_error_difference = "gray75",
          fill_error_reference = "gray75",
          fill_error_unused = "gray75",
          fill_raw_comparison = "NA",
          fill_raw_reference = "NA",
          fill_raw_unused = "NA",
          fill_summary_comparison = "#009F81",
          fill_summary_difference = "black",
          fill_summary_reference = "#008DF9",
          fill_summary_unused = "gray65",
          grouping_variable = list(types = list(), value = ""),
          grouping_variable_A = list(types = list(), value = ""),
          grouping_variable_B = list(types = list(), value = ""),
          height = 400,
          linetype_summary_comparison = "solid",
          linetype_summary_difference = "solid",
          linetype_summary_reference = "solid",
          linetype_summary_unused = "solid",
          null_boundary = 0,
          null_color = "#A40122",
          null_value = 0,
          outcome_variable = list(types = list(), value = ""),
          outcome_variable_level1 = list(types = list(), value = ""),
          outcome_variable_level2 = list(types = list(), value = ""),
          outcome_variable_name = "",
          outcome_variable_name_bs = "",
          plotHeight = 320,
          plotWidth = 480,
          repeated_measures_name = "",
          rope_units = "raw",
          shape_raw_comparison = "circle filled",
          shape_raw_reference = "circle filled",
          shape_raw_unused = "circle filled",
          shape_summary_comparison = "circle filled",
          shape_summary_difference = "triangle filled",
          shape_summary_reference = "circle filled",
          shape_summary_unused = "circle filled",
          show_CI = FALSE,
          show_details = FALSE,
          show_interaction_plot = FALSE,
          simple_contrast_labels = TRUE,
          size_interval_comparison = 3,
          size_interval_difference = 3,
          size_interval_reference = 3,
          size_interval_unused = 3,
          size_raw_comparison = 2,
          size_raw_reference = 2,
          size_raw_unused = 1,
          size_summary_comparison = 4,
          size_summary_difference = 4,
          size_summary_reference = 4,
          size_summary_unused = 4,
          summary_dirty = FALSE,
          switch = "from_summary",
          width = 700,
          xlab = "",
          ybreaks = "",
          ylab = "",
          ymax = "",
          ymin = "") {

   options <- mget(names(formals(sys.function())), envir = environment(), inherits = FALSE)
   options[["data"]] <- NULL
   options[["version"]] <- NULL


   if (!jaspBase::jaspResultsCalledFromJasp() && !is.null(data)) {
      jaspBase::storeDataSet(data)
   }

   optionsWithFormula <- c("color_interval_comparison", "color_interval_difference", "color_interval_reference", "color_interval_unused", "color_raw_comparison", "color_raw_reference", "color_raw_unused", "color_summary_comparison", "color_summary_difference", "color_summary_reference", "color_summary_unused", "data_layout", "difference_axis_units", "effect_size", "error_layout", "fill_error_comparison", "fill_error_difference", "fill_error_reference", "fill_error_unused", "fill_raw_comparison", "fill_raw_reference", "fill_raw_unused", "fill_summary_comparison", "fill_summary_difference", "fill_summary_reference", "fill_summary_unused", "grouping_variable", "grouping_variable_A", "grouping_variable_B", "linetype_summary_comparison", "linetype_summary_difference", "linetype_summary_reference", "linetype_summary_unused", "null_color", "outcome_variable", "outcome_variable_level1", "outcome_variable_level2", "rope_units", "shape_raw_comparison", "shape_raw_reference", "shape_raw_unused", "shape_summary_comparison", "shape_summary_difference", "shape_summary_reference", "shape_summary_unused")
   for (name in optionsWithFormula) {
      if ((name %in% optionsWithFormula) && inherits(options[[name]], "formula")) options[[name]] = jaspBase::jaspFormula(options[[name]], data)   }

   # Options not given in the call get their default from the form, which can depend on the other options.
   options <- options[names(options) %in% names(match.call())[-1L]]
   return(jaspBase::runWrappedAnalysis("jaspEsci", "jasp_estimate_mdiff_2x2", "jasp_estimate_mdiff_2x2.qml", options, version, TRUE))
}