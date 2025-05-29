import QtQuick
import JASP.Controls
import JASP
import "./" as Esci

      DropDown
      {
        label: qsTr("Style")
        startValue: 'halfeye'
        values:
          [
            { label: qsTr("Plausibility curve"), value: "halfeye"},
            { label: qsTr("Cat's eye"), value: "eye"},
            { label: qsTr("None"), value: "none"}
          ]
      }
