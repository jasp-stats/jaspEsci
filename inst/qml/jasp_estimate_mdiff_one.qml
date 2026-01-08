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
      effect_size.currentValue = "mean"
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
    AssignedVariablesList { name: "outcome_variable"; title: qsTr("Outcome variable"); allowedColumns: ["scale"] }
  }

  GridLayout {
    id: summary_grid
    columns: 2
    rowSpacing: 1
    columnSpacing: 1
    visible: switch_source.is_summary

    Label {
      text: qsTr("Mean (<i>M</i>)")
    }

    DoubleField
    {
      name: "mean"
      defaultValue: 10.1
      fieldWidth: jaspTheme.textFieldWidth
      negativeValues: true
      onEditingFinished : {
        summary_dirty.checked = true
      }
    }

    Label {
      text: qsTr("Standard deviation (<i>s</i>)")
    }

    DoubleField
    {
      name: "sd"
      defaultValue: 3
      min: 0
      fieldWidth: jaspTheme.textFieldWidth
      onEditingFinished : {
        summary_dirty.checked = true
      }
    }

    Label {
      text: qsTr("Sample size (<i>N</i>)")
    }

    IntegerField
    {
      name: "n"
      defaultValue: 20
      min: 2
      fieldWidth: jaspTheme.textFieldWidth
      onEditingFinished : {
        summary_dirty.checked = true
      }
    }

    Label {
      text: qsTr("Outcome variable name")
    }

    TextField
    {
      name: "outcome_variable_name"
      placeholderText: qsTr("Outcome variable")
    }


    CheckBox
    {
      name: "summary_dirty";
      id: summary_dirty
      visible: false
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
      values:
          [
        { label: qsTr("Mean"), value: "mean"},
        { label: qsTr("Median"), value: "median"}
      ]
      id: effect_size
      enabled: !switch_source.is_summary
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
      name: "show_calculations";
      label: qsTr("Calculation components");
      enabled: effect_size.currentValue == "mean"
    }
  }


  Esci.FigureOptions {
    is_summary: switch_source.is_summary
    simple_labels_enabled: false
    simple_labels_visible: false
    difference_axis_grid_visible: false
  }

  Section
  {
    title: qsTr("Aesthetics")


    Esci.AestheticsSummary {

    }


    GridLayout
    {
      columns: 5
      rowSpacing:    jaspTheme.rowGroupSpacing
      columnSpacing: jaspTheme.columnGroupSpacing

      Label { text: "<b>CI</b>" }

      Label { text:  qsTr("Style") }

      Esci.LineTypeSelect
      {
        name: "linetype_summary"
        id: linetype_summary
        fieldWidth: jaspTheme.textFieldWidth * 0.7
      }

      Label { text:  qsTr("Thickness") }

      IntegerField
      {
        name: "size_interval"
        defaultValue: 3
        min: 1
        max: 10
        enabled: effect_size.currentValue == "mean"
        fieldWidth: jaspTheme.textFieldWidth * 0.7
      }

      Label { text: "" }

      Label { text: qsTr("Color") }

      Esci.ColorSelect
      {
        name: "color_interval"
        startValue: 'black'
        id: color_interval
        enabled: effect_size.currentValue == "mean"
        fieldWidth: jaspTheme.textFieldWidth * 0.7
      }

      Label { text: qsTr("Transparency") }

      Esci.AlphaSelect
      {
        name: "alpha_interval"
        enabled: effect_size.currentValue == "mean"
        fieldWidth: jaspTheme.textFieldWidth * 0.7
      }


      Label { text: qsTr("<b>Error distribution</b>") }

      Label { text: qsTr("Fill") }

      Esci.ColorSelect
      {
        name: "fill_error"
        startValue: 'gray75'
        id: fill_error
        enabled: effect_size.currentValue == "mean"
        fieldWidth: jaspTheme.textFieldWidth * 0.7
      }

      Label { text: qsTr("Transparency") }

      Esci.AlphaSelect
      {
        name: "alpha_error"
        enabled: effect_size.currentValue == "mean"
        fieldWidth: jaspTheme.textFieldWidth * 0.7
      }


      Label { text: qsTr("<b>The raw data</b>") }

      Label { text: qsTr("Shape") }

      Esci.ShapeSelect
      {
        name: "shape_raw"
        id: shape_raw
        enabled: !switch_source.is_summary
        fieldWidth: jaspTheme.textFieldWidth * 0.7
      }

      Label { text: qsTr("Size") }

      Esci.SizeSelect
      {
        name: "size_raw"
        defaultValue: 2
        enabled: !switch_source.is_summary
        fieldWidth: jaspTheme.textFieldWidth * 0.7
      }

      Label { text:" " }

      Label { text: qsTr("Outline") }

      Esci.ColorSelect
      {
        name: "color_raw"
        startValue: '#008DF9'
        id: color_raw
        enabled: !switch_source.is_summary
        fieldWidth: jaspTheme.textFieldWidth * 0.7
      }

      Label { text: qsTr("Fill") }

      Esci.ColorSelect
      {
        name: "fill_raw"
        startValue: 'NA'
        id: fill_raw
        enabled: !switch_source.is_summary
        fieldWidth: jaspTheme.textFieldWidth * 0.7
      }


      Label { text: " " }

      Label { text: qsTr("Transparency") }

      Esci.AlphaSelect
      {
        name: "alpha_raw"
        enabled: !switch_source.is_summary
        fieldWidth: jaspTheme.textFieldWidth * 0.7
      }

    }

  } // end aesthetics


  Esci.HeOptions {
    id: myHeOptions

  }

}
