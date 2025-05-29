import QtQuick
import JASP.Controls
import JASP
import "./" as Esci

      DropDown
      {
        startValue: 'circle filled'
        values:
          [
            { label: qsTr("Circle"), value: "circle filled"},
            { label: qsTr("Square"), value: "square filled"},
            { label: qsTr("Diamond"), value: "diamond filled"},
            { label: qsTr("Triangle"), value: "triangle filled"}
          ]
      }
