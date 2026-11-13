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

#' ESCI Correlations: Single Group
#'
jasp_estimate_r <- function(
          data = NULL,
          version = "1",
          alpha_interval = 0,
          alpha_summary = 0,
          axis.text.x = 14,
          axis.text.y = 14,
          axis.title.x = 15,
          axis.title.y = 15,
          color_interval = "black",
          color_summary = "#008DF9",
          conf_level = 0.95,
          data_layout = "random",
          data_spread = 0.25,
          difference_axis_breaks = "",
          difference_axis_units = "raw",
          do_regression = FALSE,
          error_layout = "halfeye",
          error_nudge = 0.3,
          error_scale = 0.2,
          evaluate_hypotheses = FALSE,
          fill_summary = "#008DF9",
          height = 400,
          histogram_bins = 12,
          linetype_summary = "solid",
          n = 20,
          null_boundary = 0,
          null_color = "#A40122",
          null_value = 0,
          plotHeight = 320,
          plotWidth = 480,
          plot_as_z = FALSE,
          predict_from_x = "",
          r = 0.5,
          rope_units = "raw",
          shape_summary = "circle filled",
          show_PI = FALSE,
          show_details = FALSE,
          show_line = FALSE,
          show_line_CI = FALSE,
          show_mean_lines = FALSE,
          show_r = FALSE,
          show_residuals = FALSE,
          simple_contrast_labels = TRUE,
          size_interval = 3,
          size_summary = 4,
          sp_alpha_CI = 0,
          sp_alpha_PI = 0,
          sp_alpha_PI_reference = 0,
          sp_alpha_raw_reference = 0.75,
          sp_alpha_ref = 0,
          sp_alpha_residual_reference = 0,
          sp_alpha_summary_reference = 0.75,
          sp_axis.text.x = 14,
          sp_axis.text.y = 14,
          sp_axis.title.x = 15,
          sp_axis.title.y = 15,
          sp_color_CI = "#008DF9",
          sp_color_PI = "#E20134",
          sp_color_PI_reference = "#E20134",
          sp_color_raw_reference = "black",
          sp_color_ref = "gray60",
          sp_color_residual_reference = "#E20134",
          sp_color_summary_reference = "#008DF9",
          sp_fill_raw_reference = "#008DF9",
          sp_linetype_CI = "solid",
          sp_linetype_PI = "solid",
          sp_linetype_PI_reference = "dotted",
          sp_linetype_ref = "dotted",
          sp_linetype_residual_reference = "solid",
          sp_linetype_summary_reference = "solid",
          sp_plot_height = 650,
          sp_plot_width = 650,
          sp_prediction_color = "#E20134",
          sp_prediction_label = 5,
          sp_shape_raw_reference = "circle filled",
          sp_size_CI = 4,
          sp_size_PI = 2,
          sp_size_PI_reference = 2,
          sp_size_raw_reference = 3,
          sp_size_ref = 1,
          sp_size_residual_reference = 1,
          sp_size_summary_reference = 3,
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
          width = 300,
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

   optionsWithFormula <- c("color_interval", "color_summary", "data_layout", "difference_axis_units", "error_layout", "fill_summary", "linetype_summary", "null_color", "rope_units", "shape_summary", "sp_color_CI", "sp_color_PI", "sp_color_PI_reference", "sp_color_raw_reference", "sp_color_ref", "sp_color_residual_reference", "sp_color_summary_reference", "sp_fill_raw_reference", "sp_linetype_CI", "sp_linetype_PI", "sp_linetype_PI_reference", "sp_linetype_ref", "sp_linetype_residual_reference", "sp_linetype_summary_reference", "sp_prediction_color", "sp_shape_raw_reference", "x", "y")
   for (name in optionsWithFormula) {
      if ((name %in% optionsWithFormula) && inherits(options[[name]], "formula")) options[[name]] = jaspBase::jaspFormula(options[[name]], data)   }

   # Options not given in the call get their default from the form, which can depend on the other options.
   options <- options[names(options) %in% names(match.call())[-1L]]
   return(jaspBase::runWrappedAnalysis("jaspEsci", "jasp_estimate_r", "jasp_estimate_r.qml", options, version, TRUE))
}