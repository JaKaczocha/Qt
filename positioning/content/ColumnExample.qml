import QtQuick 2.15
import QtQuick.Controls 2.15

DarkSquare {
    id: root;
    width: 120; height: 240;

    Column {
        id: column;
        anchors.centerIn: parent;
        spacing: 8;
        RedSquare {}
        GreenSquare {width: 96;}
        BlueSquare {}
    }
}
