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

#' ESCI Correlations: Two Groups
#'
jasp_estimate_rdiff_two <- function(
          data = NULL,
          version = "1",
          alpha_summary_comparison = 0,
          alpha_summary_difference = 0,
          alpha_summary_reference = 0,
          axis.text.x = 14,
          axis.text.y = 14,
          axis.title.x = 15,
          axis.title.y = 15,
          color_summary_comparison = "#009F81",
          color_summary_difference = "black",
          color_summary_reference = "#008DF9",
          comparison_level_name = "",
          comparison_n = 20,
          comparison_r = 0.75,
          conf_level = 0.95,
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
          grouping_variable_name = "",
          height = 400,
          histogram_bins = 12,
          linetype_summary_comparison = "solid",
          linetype_summary_difference = "solid",
          linetype_summary_reference = "solid",
          null_boundary = 0,
          null_color = "#A40122",
          null_value = 0,
          plotHeight = 320,
          plotWidth = 480,
          plot_as_z = FALSE,
          reference_level_name = "",
          reference_n = 20,
          reference_r = 0.5,
          rope_units = "raw",
          shape_raw_unused = "circle filled",
          shape_summary_comparison = "circle filled",
          shape_summary_difference = "triangle filled",
          shape_summary_reference = "circle filled",
          show_details = FALSE,
          show_line = FALSE,
          show_line_CI = FALSE,
          show_mean_lines = FALSE,
          show_r = FALSE,
          simple_contrast_labels = TRUE,
          size_summary_comparison = 4,
          size_summary_difference = 4,
          size_summary_reference = 4,
          sp_alpha_raw_comparison = 0.75,
          sp_alpha_raw_reference = 0.75,
          sp_alpha_raw_unused = 0.75,
          sp_alpha_summary_comparison = 0.75,
          sp_alpha_summary_reference = 0.75,
          sp_axis.text.x = 14,
          sp_axis.text.y = 14,
          sp_axis.title.x = 15,
          sp_axis.title.y = 15,
          sp_color_raw_comparison = "black",
          sp_color_raw_reference = "black",
          sp_color_raw_unused = "black",
          sp_color_summary_comparison = "#009F81",
          sp_color_summary_reference = "#008DF9",
          sp_fill_raw_comparison = "#009F81",
          sp_fill_raw_reference = "#008DF9",
          sp_fill_raw_unused = "NA",
          sp_linetype_summary_comparison = "solid",
          sp_linetype_summary_reference = "solid",
          sp_plot_height = 650,
          sp_plot_width = 650,
          sp_shape_raw_comparison = "circle filled",
          sp_shape_raw_reference = "circle filled",
          sp_size_raw_comparison = 3,
          sp_size_raw_reference = 3,
          sp_size_raw_unused = 2,
          sp_size_summary_comparison = 2,
          sp_size_summary_reference = 2,
          sp_xbreaks = "",
          sp_xlab = "",
          sp_xmax = "",
          sp_xmin = "",
          sp_ybreaks = "",
          sp_ylab = "",
          sp_ymax = "",
          sp_ymin = "",
          summary_dirty = FALSE,
          switch = "from_summary",
          width = 600,
          x = list(types = list(), value = ""),
          x_variable_name = "",
          xlab = "",
          y = list(types = list(), value = ""),
          y_variable_name = "",
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

   optionsWithFormula <- c("color_summary_comparison", "color_summary_difference", "color_summary_reference", "data_layout", "difference_axis_units", "error_layout", "fill_summary_comparison", "fill_summary_difference", "fill_summary_reference", "grouping_variable", "linetype_summary_comparison", "linetype_summary_difference", "linetype_summary_reference", "null_color", "rope_units", "shape_raw_unused", "shape_summary_comparison", "shape_summary_difference", "shape_summary_reference", "sp_color_raw_comparison", "sp_color_raw_reference", "sp_color_raw_unused", "sp_color_summary_comparison", "sp_color_summary_reference", "sp_fill_raw_comparison", "sp_fill_raw_reference", "sp_fill_raw_unused", "sp_linetype_summary_comparison", "sp_linetype_summary_reference", "sp_shape_raw_comparison", "sp_shape_raw_reference", "x", "y")
   for (name in optionsWithFormula) {
      if ((name %in% optionsWithFormula) && inherits(options[[name]], "formula")) options[[name]] = jaspBase::jaspFormula(options[[name]], data)   }

   # Options not given in the call get their default from the form, which can depend on the other options.
   options <- options[names(options) %in% names(match.call())[-1L]]
   return(jaspBase::runWrappedAnalysis("jaspEsci", "jasp_estimate_rdiff_two", "jasp_estimate_rdiff_two.qml", options, version, TRUE))
}