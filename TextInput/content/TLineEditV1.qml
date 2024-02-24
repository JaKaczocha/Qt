import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: root
    width: 96; height: input.height + 8;
    color: "#450053";
    border.color: "#110010";
    border.width: 4;
    property alias input: input;
    property alias text: input.text;

    TextInput {
        id: input;
        text: "ala ma kota"
        anchors.fill: parent;
        anchors.margins: 4;
        focus: true
    }
}
