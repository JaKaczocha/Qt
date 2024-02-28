import QtQuick 2.15
import QtQuick.Controls 2.15

Image {
    id: root;

    signal clicked;
    property alias text: textItem.text;

    Text {
        id: textItem;
        anchors.centerIn: parent;


    }

    MouseArea {
        anchors.fill: parent;
        onClicked: root.clicked();
    }
}
