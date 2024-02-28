/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import ballAnim

Rectangle {
    id: root

    width: 480;
    height: 300;
    property alias grassMouse: grassMouse
    property alias mouseAreaBall: mouseAreaBall


    property int duration: 3000;

    property alias ball: ball;
    property alias anim: anim;


    Rectangle {
        id: sky;
        height: 200;
        width: parent.width;
        gradient: Gradient {
            GradientStop {position: 0.0; color: "#112378";}
            GradientStop {position: 1.0; color: "#243189";}
        }
    }


    Rectangle {
        id: grass;
        height: parent.height - sky.height;
        width: parent.width;
        anchors.top: sky.bottom;
        anchors.bottom: parent.bottom;

        gradient: Gradient {
                GradientStop {position: 0.0;color:"#154520";}
                GradientStop {position: 1.0;color:"#327825";}
        }
    }
    MouseArea {
        id: grassMouse;
        anchors.fill: grass;

    }

    Image {
        id: ball;
        x: 0; y: root.height-height;
        source: "assets/soccer_ball.png";



        MouseArea{
            id: mouseAreaBall;

            anchors.fill: parent;
        }
    }

    ParallelAnimation {
        id: anim;

        SequentialAnimation {
            id: animY;

            NumberAnimation {
                target: ball;
                properties: "y";
                to: 20;
                duration: root.duration * 0.4;
                easing.type: Easing.OutCirc;
            }
            NumberAnimation {
                target: ball;
                properties: "y";
                to: root.height - ball.height;
                duration: root.duration * 0.6;
                easing.type: Easing.OutBounce;
            }
        }

        NumberAnimation {
            id: animX;
            target: ball;
            properties: "x";
            to: root.width - ball.width;
            duration: root.duration;
        }

        RotationAnimation {
            id: animRot;
            target: ball;
            properties: "rotation";
            to: 720;
            duration: root.duration;

        }


    }






}
