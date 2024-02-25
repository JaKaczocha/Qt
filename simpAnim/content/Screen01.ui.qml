/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import simpAnim

Image {
    id: root;

    source: "assets/background.png"

    property bool running: false;
    property int duration: 4000;
    property int padding: 40;

    property alias mouseArea1: mouseArea1;
    property alias redBox: redBox;


    Image {
        id: redBox;
        source: "assets/box_red.png"

        x: root.padding;
        y: (root.height - redBox.height) / 2;




    }

    MouseArea {
        id: mouseArea1;

        anchors.fill: parent;

    }



}
