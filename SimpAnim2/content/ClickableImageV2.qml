import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root;
    width: container.childrenRect.width
    height: container.childrenRect.height

    property alias text: label.text;
    property alias source: image.source;

    signal clicked

    Column {
        id: container;
        anchors.fill: parent;
        Image {
            id: image;
        }

        Text {
            id: label;
            width: image.width;
            horizontalAlignment: Text.AlignHCenter;
            wrapMode: Text.WordWrap;
            color: "#ec11ec"
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: root.clicked()
        }
    }
}
