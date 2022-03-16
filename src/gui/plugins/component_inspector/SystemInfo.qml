/*
 * Copyright (C) 2022 Open Source Robotics Foundation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
*/
import QtQuick 2.9
import QtQuick.Controls 1.4
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.1
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4
import "qrc:/ComponentInspector"

Rectangle {
  id: stringComponent
  height: typeHeader.height
  width: componentInspector.width
  color: index % 2 == 0 ? lightGrey : darkGrey

  // Left indentation
  property int indentation: 10

  // Horizontal margins
  property int margin: 5

  RowLayout {
    anchors.fill: parent

    Item {
      height: parent.height
      width: margin
    }

    Item {
      height: parent.height
      width: indentation
    }

    TypeHeader {
      id: typeHeader
    }

    Text {
      id: name
      text: model.data[0]
      Layout.fillWidth: true
      horizontalAlignment: Text.AlignRight
      color: Material.theme == Material.Light ? "black" : "white"
      font.pointSize: 12
      elide: Text.ElideLeft

      ToolTip {
        visible: ma.containsMouse
        delay: Qt.styleHints.mousePressAndHoldInterval
        text: name.text
        enter: null
        exit: null
      }
      MouseArea {
        id: ma
        anchors.fill: name
        hoverEnabled: true
      }
    }

    Item {
      height: parent.height
      width: margin
    }
  }
}
