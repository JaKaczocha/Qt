// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.2
import forbot8synchronization
import QtQuick.Controls 6.2

Window {
   id: applicationWindow

   visible: true
   width: 640
   height: 480
   title: qsTr("Scroll")

   Column {
       anchors.centerIn: parent
       spacing: 10

       BusyIndicator {
           anchors.horizontalCenter: parent.horizontalCenter
       }

       Button {
           id: button

           anchors.horizontalCenter: parent.horizontalCenter
           text: "Click me"

           onClicked: {
               enabled = false
               calculations.heavyCalculations()
           }

           Connections {
               target: calculations
               onFinished: button.enabled = true
           }

           Connections {
               target: calculations
               onResult: console.log("Result of calculations: ", result)
           }
       }

       ProgressBar {
           id: progressBar

           value: 0.0
           anchors.horizontalCenter: parent.horizontalCenter

           Connections {
               target: calculations
               onProgress: progressBar.value = progress
           }
       }
   }
}
