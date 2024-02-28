// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.5
import Ufo

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "Ufo"

    Screen01 {
        id: mainScreen

        button1.onClicked: {
            parallel.anim.start();
            sequential.anim.start();
        }

    }

}

