//
// Copyright (C) 2013-2018 University of Amsterdam
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public
// License along with this program.  If not, see
// <http://www.gnu.org/licenses/>.
//

import QtQuick
import QtQuick.Layouts
import JASP
import JASP.Controls
import "./esci" as Esci

Form
{
  id: form

  columns: 1

  function alpha_adjust() {
    myHeOptions.currentConfLevel = conf_level.value
  }

  function switch_adjust() {
    if (switch_source.is_summary) {
      effect_size.currentValue = "mean_difference";
      show_ratio.checked = false;
    }
  }


  Esci.RawOrSummary
  {
    id: switch_source
    onValueChanged: switch_adjust()
  }


  VariablesForm
  {
    visible: !switch_source.is_summary
    preferredHeight: jaspTheme.smallDefaultVariablesFormHeight
    AvailableVariablesList { name: "allVariablesList" }
    AssignedVariablesList {
      name: "outcome_variable";
      title: qsTr("Outcome variable(s)");
      allowedColumns: ["scale"];

    }
    AssignedVariablesList {
      name: "grouping_variable";
      title: qsTr("Grouping variable");
      allowedColumns: ["nominal"];
      singleVariable: trueOn
    }
  }

  VariablesForm {
    visible: switch_source.is_summary
    preferredHeight: jaspTheme.smallDefaultVariablesFormHeight
    AvailableVariablesList { name: "allVariablesList_summary" }
    AssignedVariablesList {
      name: "grouping_variable_levels";
      id: grouping_variable_levels;
      title: qsTr("Grouping variable levels");
      allowedColumns: ["nominal"];
      singleVariable: true;
      onCountChanged: {
        if (grouping_variable_levels.count > 0) summary_dirty.checked = true
      }
    }
    AssignedVariablesList {
      name: "means";
      id: means;
      title: qsTr("Group means");
      allowedColumns: ["scale"];
      singleVariable: true;
      onCountChanged: {
        if (means.count > 0) summary_dirty.checked = true
      }
    }
    AssignedVariablesList {
      name: "sds";
      id: sds;
      title: qsTr("Group standard deviations");
      allowedColumns: ["scale"];
      singleVariable: true;
      onCountChanged: {
        if (sds.count > 0) summary_dirty.checked = true
      }
    }
    AssignedVariablesList {
      name: "ns";
      id: ns;
      title: qsTr("Group sample sizes");
      allowedColumns: ["scale"];
      singleVariable: true;
      onCountChanged: {
        if (ns.count > 0) summary_dirty.checked = true
      }
    }
  }


  Group {
    visible: switch_source.is_summary

    TextField
    {
      name: "outcome_variable_name"
      label: qsTr("Outcome variable name")
      placeholderText: "Outcome variable"
    }


    TextField
    {
      name: "grouping_variable_name"
      label: qsTr("Grouping variable name")
      placeholderText: "Grouping variable"
    }

  }


  CheckBox
  {
    name: "summary_dirty";
    id: summary_dirty
    checked: false
    visible: false
  }

  Group {
    title: qsTr("<b>Define contrast</b>")

    TextField
    {
      name: "reference_labels"
      id: reference_labels
      label: qsTr("Reference subset")
      fieldWidth: 400
    }

    TextField
    {
      name: "comparison_labels"
      id: comparison_labels
      label: qsTr("Comparison subset")
      fieldWidth: 400
    }


  }

  Group
  {
    title: qsTr("<b>Analysis options</b>")

    Esci.ConfLevel
    {
      name: "conf_level"
      id: conf_level
      onFocusChanged: {
        alpha_adjust()
      }
    }

    DropDown
    {
      name: "effect_size"
      label: qsTr("Effect size of interest")
      enabled: !switch_source.is_summary
      values:
          [
        { label: "Mean difference", value: "mean_difference"},
        { label: "Median difference", value: "median_difference"}
      ]
      id: effect_size
    }

    CheckBox {
      name: "assume_equal_variance";
      id: assume_equal_variance
      label: qsTr("Assume equal variances")
      checked: true
      enabled: effect_size.currentValue == "mean_difference"
    }

  }

  Group
  {
    title: qsTr("<b>Results options</b>")
    CheckBox
    {
      name: "show_details";
      label: qsTr("Extra details")
    }

    CheckBox
    {
      name: "mixed";
      id: mixed
      visible: false
      enabled: false
    }
  }


  Esci.FigureOptions {
    is_summary: switch_source.is_summary
    simple_labels_enabled: true
    width_defaultValue: 550
    height_defaultValue: 450
    error_nudge_defaultValue: 0.5
    data_spread_defaultValue: 0.20
    error_scale_defaultValue: 0.25
  }


  Esci.AestheticsAll {
    is_summary: switch_source.is_summary
  }

  Esci.HeOptions {
    id: myHeOptions
    null_value_enabled: false
    rope_units_visible: evaluate_hypotheses_checked
    hgrid_columns: 4
  }

}
