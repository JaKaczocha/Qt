// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.2
import ballAnim

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "ballAnim"

    Screen01 {
        id: mainScreen

        grassMouse.onClicked: {
            console.log("ala ma kota");
        }

        mouseAreaBall.onClicked: {
            console.log("mab clicked");
            anim.restart();
            console.log("mab ended");
        }

    }
}



