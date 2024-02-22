/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import MouseArea

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    Rectangle {
        id: rec1
        x: 12; y: 16
        width: 72; height: 144
        color: "#112233"
        MouseArea {
            id: marea
            width: parent.width; height: parent.height
            onClicked: rect2.visible = !rect2.visible
            onPressed: rect3.visible = !rect3.visible
            onExited: rect3.visible = !rect3.visible
        }

    }
    Rectangle {
        id: rect2
        x: 122
        y: 16
        width: 72
        height: 144
        radius: 16
        visible: false
        border.width: 8
        border.color: "#222a88";
    }
    Rectangle {
        id: rect3
        x: 200
        y: 16
        width: 72
        height: 144
        radius: 16
        visible: false
        border.width: 8
        border.color: "#f22a88";
        Text {
            text: "pochitaa"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}
