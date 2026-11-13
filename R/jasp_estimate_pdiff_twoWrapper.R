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

#' ESCI Proportions: Two Groups
#'
jasp_estimate_pdiff_two <- function(
          data = NULL,
          version = "1",
          alpha_summary_comparison = 0,
          alpha_summary_difference = 0,
          alpha_summary_reference = 0,
          axis.text.x = 14,
          axis.text.y = 14,
          axis.title.x = 15,
          axis.title.y = 15,
          case_label = "",
          chi_table_option = "both",
          color_summary_comparison = "#009F81",
          color_summary_difference = "black",
          color_summary_reference = "#008DF9",
          comparison_cases = 40,
          comparison_not_cases = 60,
          conf_level = 0.95,
          count_NA = FALSE,
          data_layout = "random",
          data_spread = 0.25,
          difference_axis_breaks = "",
          difference_axis_units = "raw",
          error_layout = "halfeye",
          error_nudge = 0.3,
          error_scale = 0.2,
          evaluate_hypotheses = FALSE,
          fill_summary_comparison = "#009F81",
          fill_summary_difference = "black",
          fill_summary_reference = "#008DF9",
          grouping_variable = list(types = list(), value = ""),
          grouping_variable_level1 = "",
          grouping_variable_level2 = "",
          grouping_variable_name = "",
          height = 400,
          linetype_summary_comparison = "solid",
          linetype_summary_difference = "solid",
          linetype_summary_reference = "solid",
          not_case_label = "",
          null_boundary = 0,
          null_color = "#A40122",
          null_value = 0,
          outcome_variable = list(types = list(), value = list()),
          outcome_variable_name = "",
          plotHeight = 320,
          plotWidth = 480,
          reference_cases = 20,
          reference_not_cases = 80,
          rope_units = "raw",
          shape_summary_comparison = "circle filled",
          shape_summary_difference = "triangle filled",
          shape_summary_reference = "circle filled",
          show_chi_square = FALSE,
          show_details = FALSE,
          show_phi = FALSE,
          show_ratio = FALSE,
          simple_contrast_labels = TRUE,
          size_summary_comparison = 4,
          size_summary_difference = 4,
          size_summary_reference = 4,
          summary_dirty = FALSE,
          switch = "from_summary",
          width = 300,
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

   optionsWithFormula <- c("color_summary_comparison", "color_summary_difference", "color_summary_reference", "data_layout", "difference_axis_units", "error_layout", "fill_summary_comparison", "fill_summary_difference", "fill_summary_reference", "grouping_variable", "linetype_summary_comparison", "linetype_summary_difference", "linetype_summary_reference", "null_color", "outcome_variable", "rope_units", "shape_summary_comparison", "shape_summary_difference", "shape_summary_reference")
   for (name in optionsWithFormula) {
      if ((name %in% optionsWithFormula) && inherits(options[[name]], "formula")) options[[name]] = jaspBase::jaspFormula(options[[name]], data)   }

   # Options not given in the call get their default from the form, which can depend on the other options.
   options <- options[names(options) %in% names(match.call())[-1L]]
   return(jaspBase::runWrappedAnalysis("jaspEsci", "jasp_estimate_pdiff_two", "jasp_estimate_pdiff_two.qml", options, version, TRUE))
}