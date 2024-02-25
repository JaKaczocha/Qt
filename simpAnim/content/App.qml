// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.2
import simpAnim

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "simpAnim"

    Screen01 {
        id: mainScreen

        NumberAnimation on redBox.x {
            to: mainScreen.width -  mainScreen.redBox.width - mainScreen.padding;
            duration: mainScreen.duration;
            running: mainScreen.running;
        }

        RotationAnimation on redBox.rotation {
            to: 360;
            duration: mainScreen.duration;
            running: mainScreen.running;
        }

        mouseArea1.onClicked:  {
            mainScreen.running = true;
        }



    }

}

