import QtQuick
import JASP.Controls
import JASP
import "./" as Esci

      DropDown
      {
        label: qsTr("Units")
        startValue: 'raw'
        values:
          [
            { label: qsTr("Original units"), value: "raw"},
            { label: qsTr("Standard deviations"), value: "sd"}
          ]
      }

