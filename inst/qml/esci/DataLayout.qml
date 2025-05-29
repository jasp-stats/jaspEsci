import QtQuick
import JASP.Controls
import JASP
import "./" as Esci

      DropDown
      {
        label: qsTr("Layout")
        startValue: 'random'
        values:
          [
            { label: qsTr("Random"), value: "random"},
            { label: qsTr("Swarm"), value: "swarm"},
            { label: qsTr("None"), value: "none"}
          ]
      }
