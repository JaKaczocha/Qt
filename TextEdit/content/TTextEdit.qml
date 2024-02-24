import QtQuick 2.15
import QtQuick.Controls 2.15


FocusScope {
    id: root;
    width: 96; height: 96;

    Rectangle {
        anchors.fill: parent;
        color: "lightsteelblue"
        border.color: Qt.lighter(color);
    }

    property alias input: input;
    property alias text: input.text;

    TextEdit {
        id: input;
        anchors.fill: parent;
        anchors.margins: 4;
        focus: true;
        wrapMode: TextEdit.Wrap;
        onTextChanged: {
                   let pos = input.positionAt(1, parent.height + 1);
                   if(input.length >= pos)
                   {
                       input.remove(pos, input.length);
                   }
        }
    }
}
