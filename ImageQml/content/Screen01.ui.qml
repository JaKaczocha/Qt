/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import ImageQml

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height


    gradient: Gradient {
        orientation: Gradient.Horizontal
        GradientStop {position: 0.0; color: "#013301"}
        GradientStop {position: 1.0; color: "#3fffff"}
    }


    Item {
        x: parent.width/2 -(rec1.width + rec2.width + rec3.width)/2
        y: parent.height/2



        Image {
            id: rec1


            source: "assets/triangle_red.png"
        }




        Image {
            id: rec2

            source: "assets/triangle_red.png"

            anchors.left: rec1.right

            height: 36
            clip: true
            fillMode: Image.PreserveAspectCrop
        }
        Image {
            id: rec3


            source: "assets/triangle_red.png"

            anchors.left: rec2.right
            height:144
        }
    }



}
