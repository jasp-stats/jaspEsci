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

#' ESCI Meta-Analysis: Means
#'
jasp_meta_mean <- function(
          data = NULL,
          version = "1",
          alpha_interval_comparison = 0,
          alpha_interval_difference = 0,
          alpha_interval_reference = 0,
          alpha_interval_unused = 0,
          alpha_raw_comparison = 0,
          alpha_raw_reference = 0,
          alpha_raw_unused = 0,
          alpha_summary_comparison = 0,
          alpha_summary_difference = 0,
          alpha_summary_overall = 0,
          alpha_summary_reference = 0,
          alpha_summary_unused = 0,
          axis.text.x = 14,
          axis.text.y = 14,
          axis.title.x = 15,
          color_interval_comparison = "black",
          color_interval_difference = "black",
          color_interval_reference = "black",
          color_interval_unused = "black",
          color_raw_comparison = "#009F81",
          color_raw_reference = "#008DF9",
          color_raw_unused = "gray65",
          color_summary_comparison = "#009F81",
          color_summary_difference = "black",
          color_summary_overall = "black",
          color_summary_reference = "#008DF9",
          color_summary_unused = "gray75",
          conf_level = 0.95,
          dbreaks = "",
          dlab = "",
          dmax = "",
          dmin = "",
          effect_label = "",
          fill_raw_comparison = "#009F81",
          fill_raw_reference = "#008DF9",
          fill_raw_unused = "gray65",
          fill_summary_comparison = "#009F81",
          fill_summary_difference = "black",
          fill_summary_overall = "black",
          fill_summary_reference = "#008DF9",
          fill_summary_unused = "gray75",
          height = 750,
          include_PIs = FALSE,
          labels = list(types = list(), value = ""),
          linetype_raw_comparison = "solid",
          linetype_raw_reference = "solid",
          linetype_raw_unused = "solid",
          linetype_summary_difference = "solid",
          mark_zero = FALSE,
          means = list(types = list(), value = ""),
          meta_diamond_height = 0.25,
          moderator = list(types = list(), value = ""),
          ns = list(types = list(), value = ""),
          plotHeight = 320,
          plotWidth = 480,
          random_effects = "random_effects",
          reference_mean = "",
          report_CIs = FALSE,
          reported_effect_size = "mean_difference",
          sds = list(types = list(), value = ""),
          shape_raw_comparison = "square filled",
          shape_raw_reference = "square filled",
          shape_raw_unused = "square filled",
          shape_summary_difference = "triangle filled",
          show_details = FALSE,
          size_base = 2,
          size_interval_comparison = 0.5,
          size_interval_difference = 0.5,
          size_interval_reference = 0.5,
          size_interval_unused = 0.5,
          size_multiplier = 3,
          switch = "from_raw",
          width = 600,
          xbreaks = "",
          xlab = "",
          xmax = "",
          xmin = "") {

   options <- mget(names(formals(sys.function())), envir = environment(), inherits = FALSE)
   options[["data"]] <- NULL
   options[["version"]] <- NULL


   if (!jaspBase::jaspResultsCalledFromJasp() && !is.null(data)) {
      jaspBase::storeDataSet(data)
   }

   optionsWithFormula <- c("color_interval_comparison", "color_interval_difference", "color_interval_reference", "color_interval_unused", "color_raw_comparison", "color_raw_reference", "color_raw_unused", "color_summary_comparison", "color_summary_difference", "color_summary_overall", "color_summary_reference", "color_summary_unused", "fill_raw_comparison", "fill_raw_reference", "fill_raw_unused", "fill_summary_comparison", "fill_summary_difference", "fill_summary_overall", "fill_summary_reference", "fill_summary_unused", "labels", "linetype_raw_comparison", "linetype_raw_reference", "linetype_raw_unused", "linetype_summary_difference", "means", "moderator", "ns", "random_effects", "reported_effect_size", "sds", "shape_raw_comparison", "shape_raw_reference", "shape_raw_unused", "shape_summary_difference")
   for (name in optionsWithFormula) {
      if ((name %in% optionsWithFormula) && inherits(options[[name]], "formula")) options[[name]] = jaspBase::jaspFormula(options[[name]], data)   }

   # Options not given in the call get their default from the form, which can depend on the other options.
   options <- options[names(options) %in% names(match.call())[-1L]]
   return(jaspBase::runWrappedAnalysis("jaspEsci", "jasp_meta_mean", "jasp_meta_mean.qml", options, version, TRUE))
}