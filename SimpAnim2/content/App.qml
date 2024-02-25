// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.5
import SimpAnim2

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "SimpAnim2"

    Screen01 {
        id: mainScreen

        NumberAnimation on redBox1.y {
            to: 40; duration: 4000;
        }


        redBox2.onClicked: redBox2.y = 40;
        Behavior on redBox2.y {
            NumberAnimation {duration: 4000;}
        }

        redBox3.onClicked: {
            console.info("redBox3 works");
            anim3.start()
        }
    }

}

