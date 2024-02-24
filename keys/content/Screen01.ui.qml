/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import keys

Rectangle {
    id: root
    width: 400;
    height: 400;

    color: "#010307"
    focus: true;

    Rectangle {
        id:greenRec;

        color: "#226422";
        x: 16; y: 72;
        width: 48; height: 48;
    }

    Rectangle {
        id:greenRec2;

        color: "#226422";
        x: 80; y: 72;
        width: 48; height: 48;
    }

    property alias greenBox: greenRec;
    property alias greenBox2: greenRec2;





}
