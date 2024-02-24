import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: root;
    width: 200;
    height: 200;

    color: "green";

    TLineEditV1 {
        id: input1;
        x: 8; y: 8;

        width: 96; height: 24;
        focus: true;
        text: "input1";
        KeyNavigation.tab: input2;
    }
    TLineEditV1 {
        id: input2;
        x: 8; y: 40;
        width: 96; height: 24;

        text: "input2";
        KeyNavigation.tab: input1;
    }


}

