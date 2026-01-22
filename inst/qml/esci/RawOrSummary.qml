import QtQuick
import QtQuick.Layouts
import JASP.Controls
import JASP

RadioButtonGroup
{
      property bool is_summary: from_summary.checked

      name: "switch"
      columns: 2
      Layout.columnSpan: parent.columns

      RadioButton
      {
            value:      "from_raw";
            label:      qsTr("Analyze full data");
            checked:    dataSetInfo.dataAvailable;
            enabled:    dataSetInfo.dataAvailable
      }

      RadioButton
      {
            id:         from_summary
            value:      "from_summary";
            label:      qsTr("Analyze summary data");
            checked:    !dataSetInfo.dataAvailable
      }
}
