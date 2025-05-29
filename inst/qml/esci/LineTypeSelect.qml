import QtQuick
import JASP.Controls
import JASP
import "./" as Esci

      DropDown
      {
        startValue: 'solid'
        values:
          [
            { label: qsTr("Solid"), value: "solid"},
            { label: qsTr("Dotted"), value: "dotted"},
            { label: qsTr("Dotdash"), value: "dotdash"},
            { label: qsTr("Dashed"), value: "dashed"},
            { label: qsTr("Blank"), value: "blank"}
          ]
      }
