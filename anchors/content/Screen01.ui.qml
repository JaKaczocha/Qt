/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import anchors

DarkSquare {
    id: root;
    width: 512;
    height: 512;

    Grid {

        id: grid
        rows: 2;
        columns: 3;
        spacing: 8

        GreenSquare {
            id: green1;
            width: 128; height: 128;
            BlueSquare {
                id: blue1
                anchors.fill: parent;
                anchors.margins: 8;
            }
        }

        GreenSquare {
            id: green2;
            width: 128; height: 128;
            BlueSquare {
                id: blue2
                anchors.left: parent.left;
                anchors.top: parent.top
                anchors.right: parent.horizontalCenter;
                anchors.bottom: parent.verticalCenter;
                anchors.margins: 8
            }
        }

        GreenSquare {
            id: green3;
            width: 128; height: 128;
            BlueSquare {
                id: blue3
                anchors.left: parent.right;
                anchors.top: parent.top;
                anchors.bottom: parent.verticalCenterl
                width: blue3.height

            }
        }

        GreenSquare {
            id: green4;
            width: 128; height: 128;


            RedSquare {
                id: red1
                height: 24
                anchors.horizontalCenter: parent.horizontalCenter;
                anchors.bottom: blue4.top
                anchors.margins: 8
            }
            BlueSquare {
                id: blue4
                height: 24
                anchors.left: parent.left;
                anchors.right: parent.right;
                anchors.verticalCenter: parent.verticalCenter;
                anchors.leftMargin: 16;
                anchors.rightMargin: 16
            }




        }

        GreenSquare {
            id: green5;
            width: 128; height: 128;
            BlueSquare {
                id: blue5
                anchors.centerIn: parent;
            }
        }

        GreenSquare {
            id: green6;
            width: 128; height: 128;
            BlueSquare {
                id: blue6
                anchors.verticalCenter: parent.verticalCenter;
                anchors.horizontalCenter: parent.horizontalCenter;
                anchors.horizontalCenterOffset: -24;
            }
        }


    }
}
