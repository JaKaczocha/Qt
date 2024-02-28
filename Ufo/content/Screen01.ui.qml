/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.5
import QtQuick.Controls 6.5
import Ufo

Rectangle {

    property alias button1: button1
    property alias parallel: parallel;
    property alias sequential: sequential;

    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    ParallelAnimationEx {
        id: parallel;
        anchors.left: parent.left;
    }
    SequentialAnimationEx {
        id: sequential;

        anchors.left: parallel.right;
    }

    Button {
        id: button1;

        anchors.top: parallel.bottom;
        anchors.horizontalCenter: parallel.right;
        text: "start animation";

    }
}
