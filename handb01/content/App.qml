// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.2
import handb01

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "handb01"

    Screen01 {
        id: mainScreen
        mouseAreaRotate.onClicked: {
            pinWheel.rotation += 90

        }
        Behavior on pinWheel.rotation {
                RotationAnimation {
                   duration: 250 // 1/4 second (in milliseconds)
                }
        }
    }

}

