/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import textComp

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    Text {
        id: simpleText
        width: parent.width / 1.38
        height: font.pixelSize
        text: qsTr("Brokent Ranks sh pochitaa ma największego dissaaa")
        color: "#00ffff"
        font.family: "Ubuntu"
        font.pixelSize: 64
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        style: Text.WordWrap
        styleColor: "#ff0000"
        elide: Text.ElideRight
    }
}
