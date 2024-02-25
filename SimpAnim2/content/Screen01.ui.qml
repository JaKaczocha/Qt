/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.5
import QtQuick.Controls 6.5
import SimpAnim2

Rectangle {
    id: root;
    width: 1000;
    height: 700;
    property alias redBox1: red_box1;
    property alias redBox2: red_box2;
    property alias redBox3: red_box3;
    property alias anim3: anim;

    ClickableImageV2 {
        id: red_box1;
        x: 40; y: root.height - height;
        source: "assets/box_red@2x.png";
        text: qsTr("animation on property");


    }

    ClickableImageV2 {
        id: red_box2;
        x: ( root.width - width )/ 2; y: root.height - height;
        source: "assets/box_red@2x.png";
        text: qsTr("bachavior on property");



    }
    ClickableImageV2 {
        id: red_box3;
        x: root.width - width - 40; y: root.height-height;
        source: "assets/box_red@2x.png";
        text: qsTr("standalone animation");


        NumberAnimation {
            id: anim;
            target: red_box3;
            properties: "y";
            to: 40;
            duration: 4000;

        }
    }
}

