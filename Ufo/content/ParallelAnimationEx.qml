import QtQuick 2.15
import QtQuick.Controls 2.15

BrightSquare {
    id: root;

    property int duration: 4000;
    property Item ufo: ufo;
    property alias anim: anim;

    width: 600;
    height: 400;

    Image {
        id: background;
        anchors.fill: parent;
        source: "assets/ufo_background.png";
    }

    ClickableImage {
        id: clickImg;
        x: 20; y: root.height - height;
        text: qsTr("ufo");
        source: "assets/ufo.png"
        onClicked: {
            console.info("clicked: (id) clickImg");
            console.info("x: " + clickImg.x + ", y: " + clickImg.y);
            anim.restart();
        }

    }

    ParallelAnimation {
        id: anim;
        NumberAnimation {
            target: clickImg;
            properties: "x";
            duration: duration;
            to: root.width - clickImg.width - 20;
        }
        NumberAnimation {
            target: clickImg;
            properties: "y";
            duration: duration;
            to: 20;
        }
    }
}
