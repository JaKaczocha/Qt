import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: button

    width: 100
    height: 40

    color: "#103399"
    border.color: "#111111"
    border.width: 5



    Text {
        id: textItem
        text: "click me"
        anchors.centerIn: parent

        color: "#11a066"
    }

    MouseArea {
        property int count: 0
        anchors.fill: parent
        onClicked: {
            count++;
            textItem.text = count;
        }
    }
}
