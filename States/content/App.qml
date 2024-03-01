// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.5
import States

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "States"

    Screen01 {
        id: mainScreen
        goButton.onClicked: {
            onClicked:  mainScreen.state = mainScreen.state === "stop" ? "go" : "stop";
            goButton.text = (goButton.text === "go" ? "stop" : "go");
        }
    }

}

