import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 200;
    height: 100;

    color: "linen"

    TextInput {
        id: input1;
        x: 8; y: 8;
        width: 96; height: 20;
        focus: true;
        text: "text input1";


    }

    TextInput {
        id: input2;
        x: 8; y: 36;
        width: 96; height: 20;

        text: "text input2";

    }
}
