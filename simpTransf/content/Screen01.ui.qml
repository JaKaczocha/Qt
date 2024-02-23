/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import simpTransf

Rectangle {
    height: bg.height
    width: bg.width

    property alias bgMouseArea: bgMouseArea
    property alias circle: circle;
    property alias triangle: triangle
    property alias box: box;

    ClickableImage {
        id: bg
        source: "assets/background.png"
    }
    MouseArea {
        id: bgMouseArea;
        anchors.fill: parent;
    }
    ClickableImage {
        id: circle
        x: 84; y: 68;
        source: "assets/circle_blue.png";
        antialiasing: true;

    }
    ClickableImage {
        id: box
        x: 164; y: 68;
        source: "assets/box_green.png"
        antialiasing: true;
    }
    ClickableImage {
        id: triangle
        x: 244;y:68;
        source: "assets/triangle_red.png";
        antialiasing: true
    }


}
