

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import forbot6

Rectangle {
    id: rec

    property bool isConnected: true

    visible: true

    width: column.width * 1.2
    height: column.height * 2.0

    Column {
        id: column

        spacing: 20
        anchors.centerIn: parent

        Row {
            anchors.horizontalCenter: parent.horizontalCenter

            Button {
                id: goForward

                enabled: startStop.highlighted
                highlighted: true
                icon.source: "qrc:/icons/iconmonstr-arrow-up-thin.svg"

                onPressed: rover.goForward()
                onReleased: rover.stop()
            }
        }

        Row {
            spacing: 40
            anchors.horizontalCenter: parent.horizontalCenter

            Button {
                id: goLeft

                enabled: startStop.highlighted
                highlighted: true
                icon.source: "https://www.svgrepo.com/download/97099/left-arrow.svg"
                onPressed: rover.goLeft()
                onReleased: rover.stop()
            }

            Button {
                id: startStop

                property bool isWorking: false

                contentItem: Image {
                    source: parent.isWorking ? "qrc:/icons/done_black_24dp.svg" : "qrc:/icons/block_black_24dp.svg"
                    anchors.centerIn: parent
                }

                checkable: true

                highlighted: isWorking && isConnected

                onClicked: isWorking = !isWorking
            }

            Button {
                id: goRight

                enabled: startStop.highlighted
                highlighted: true
                onPressed: rover.goRight()
                onReleased: rover.stop()

                icon.source: "https://www.svgrepo.com/download/166617/right-arrow.svg"
            }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter

            Button {
                id: goBackward

                enabled: startStop.highlighted
                highlighted: true
                icon.source: "qrc:/icons/arrow-down-3101.svg"
                onPressed: rover.goBackward()
                onReleased: rover.stop()
            }
        }

        Slider {
            id: controlLevel

            width: column.width
            enabled: startStop.highlighted

            from: 0
            to: 100
            stepSize: 0.1
            value: to * 0.2
            onValueChanged: rover.controlLevel = value
            ToolTip {
                parent: controlLevel.handle
                visible: controlLevel.pressed
                text: controlLevel.value.toFixed(1)

            }
        }
    }

    Rectangle {
        id: footer

        anchors.bottom: parent.bottom
        width: parent.width
        height: 25

        color: Material.accent

        Row {
            id: row

            anchors.fill: parent

            BusyIndicator {
                id: status

                anchors.verticalCenter: parent.verticalCenter
                height: parent.height + 3
                width: height
                Material.accent: "white"

                running: isConnected
            }
        }
    }
}
