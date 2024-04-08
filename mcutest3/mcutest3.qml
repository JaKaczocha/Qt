import QtQuick 2.0
import CustomModule

Rectangle {

    Row {
        Image {
            anchors.centerIn: parent
            source: "assets/icon.png"
        }
        Text {
            anchors.centerIn: parent
            text: " for MCUs"
        }
    }

    CustomButton {
        id: button;
        anchors.centerIn: parent
        text: qsTr("Hello world!")
        color: "#993344";
        onClicked: {
            BackendObject.toggle();
            color = color === "#993344" ? "#117680" : "#993344";
            console.log("clicked, color changed to: " + color);

        }
    }

    BackendObject.onCustomPropertyChanged: Qt.uiLanguage = BackendObject.customProperty ? "en_US" : "nb_NO"
}
