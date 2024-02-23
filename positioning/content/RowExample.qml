import QtQuick 2.15
import QtQuick.Controls 2.15

BrightSquare {
    id: root;
    width: 400; height: 120;


    Row {
        anchors.centerIn: parent;
        spacing: 15;
        RedSquare {}
        GreenSquare {}
        BlueSquare {}
    }
}
