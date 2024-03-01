/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.5
import QtQuick.Controls 6.5
import States

Rectangle {
    id: root;



    property alias boxMargin: trafficLight.boxMargin;
    property alias goButton: goButton;

    state: "stop"
    states: [
        State {
            name: "go"
            PropertyChanges {
                target: light1;
                color: "#323232";
            }
            PropertyChanges {
                target: light2;
                color: "#33aa33";
            }
        },
        State {
            name: "stop"
            PropertyChanges {
                target: light1;
                color: "#ff3322";
            }
            PropertyChanges {
                target: light2;
                color: "#323232";
            }
        }
    ]
    transitions: [
        Transition {
            from: "stop"; to: "go"
            // from: "*"; to: "*"
            ColorAnimation { target: light1; properties: "color"; duration: 2000 }
            ColorAnimation { target: light2; properties: "color"; duration: 2000 }
        }
    ]

    Button {
        id: goButton;
        anchors.top: trafficLight.bottom;
        anchors.horizontalCenter: trafficLight.horizontalCenter;
        text: qsTr("go");




    }

    Rectangle {
        id: trafficLight;
        border.color: Qt.black;
        border.width: 5;
        width: light1.width + 2 * boxMargin;
        height: light1.height + light2.height + 3 * boxMargin;

        property int boxMargin: 10;


        Rectangle {
            id: light1;
            anchors.top: parent.top;

            anchors.topMargin: boxMargin;
            anchors.horizontalCenter: parent.horizontalCenter;

            width: 100; height: width;
            color: "#323232"
            radius: width/2;
            border.color: Qt.darker(color, 1.4);
            border.width: 5;
        }

        Rectangle {
            id: light2;
            y: 116
            anchors.bottom: parent.bottom;

            anchors.bottomMargin: boxMargin
            anchors.horizontalCenter: parent.horizontalCenter;

            width: 100; height: width;
            color: "#323232"
            radius: width/2;
            border.color: Qt.darker(color, 1.4);
            border.width: 5;
        }

    }



}
