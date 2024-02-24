// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.2
import keys

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "keys"

    Screen01 {
        id: mainScreen

        Keys.onLeftPressed: {
            greenBox.x -= 8;
            greenBox2.x -= 8;
        }

        Keys.onRightPressed: {
            greenBox.x += 8;
            greenBox2.x += 8;
        }

        Keys.onDownPressed: {
             greenBox.y += 8;
             greenBox2.y += 8;
        }

        Keys.onUpPressed: {
            greenBox.y -= 8;
            greenBox2.y -= 8;
        }

        Keys.onPressed: function(event) {
            switch(event.key) {
            case Qt.Key_Plus:
                greenBox.scale += 0.2;
                greenBox2.scale += 0.2;
                break;
            case Qt.Key_Minus:
                greenBox.scale -= 0.2
                greenBox2.scale -= 0.2
                break;
            case Qt.Key_Q:
                greenBox.rotation -= 10;
                greenBox2.rotation -= 10;
                break;
            case Qt.Key_E:
                greenBox.rotation += 10;
                greenBox2.rotation += 10;
                break;
            }
        }


    }

}

