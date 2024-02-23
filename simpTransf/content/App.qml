// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.2
import simpTransf

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "simpTransf"

    Screen01 {
        id: mainScreen

        box.onClicked: {
            box.rotation += 15;
        }
        triangle.onClicked: {
            triangle.rotation += 15;
            triangle.scale += 0.05
        }
        circle.onClicked: {
            circle.x += 20;
        }
        bgMouseArea.onClicked: {
            circle.x = 84
            box.rotation = 0;
            triangle.rotation = 0;
            triangle.scale = 1.0
        }


    }

}

