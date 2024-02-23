import QtQuick 2.15
import QtQuick.Controls 2.15

BrightSquare {
    id: root;
    width: 160; height: 160;


    Grid {
        id: grid;
        rows: 2;
        columns: 2;
        anchors.centerIn: parent;
        spacing: 5;
        RedSquare {}
        RedSquare {}
        BlueSquare {}
        RedSquare {}

    }
}
