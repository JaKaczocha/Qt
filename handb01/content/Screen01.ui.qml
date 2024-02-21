/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import handb01


Image {
    id: root
    source: "images/background.png"
    fillMode: Image.PreserveAspectFit

    Image {
        id: pole
        source: "images/pole.png"
        fillMode: Image.PreserveAspectFit
        anchors.bottom: root.bottom
        anchors.horizontalCenter: root.horizontalCenter
    }

    Image {
        id: pinwheel
        source: "images/pinwheel.png"
        anchors.horizontalCenter: pole.horizontalCenter
        anchors.verticalCenter: pole.top
        rotation: 0



    }

    MouseArea {
        id: mouseArea
        width: parent.width
        height: parent.height


    }
    property alias mouseAreaRotate: mouseArea
    property alias  pinWheel: pinwheel
}


