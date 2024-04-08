import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material
ApplicationWindow {
    id: applicationWindow
    Material.theme: Material.Dark
    Material.accent: Material.Blue
    Material.primary: Material.Blue
    width: 480
    height: 640
    visible: true
    title: qsTr("BLE UART")
    property bool disconnect: true
    header: ToolBar {
        contentHeight: toolButtonScan.implicitHeight
        Row{
            ToolButton {
                id: toolButtonScan
                text: "\u2630"
                font.pixelSize: Qt.application.font.pixelSize * 1.6
                onClicked: {
                    scanButton.enabled=true;
                    scanButton.text = disconnect ? "Scan" : "Disconnect"
                    drawer.open()
                }
            }
            ToolButton {
                id: toolButtonSend
                text: "\u23CE"
                font.pixelSize: Qt.application.font.pixelSize * 2.0
                enabled: false
                onClicked: {
                    bledevice.writeData(textTX.text.toString())
                }
            }
            ToolButton {
                id: toolButtonErase
                text: "\u232B"
                font.pixelSize: Qt.application.font.pixelSize * 2.0
                onClicked: {
                    textTX.text = ""
                    textRX.text = ""
                }
            }
        }
    }
    Drawer {
        id: drawer
        width: 250
        height: applicationWindow.height
        Button {
            id: scanButton
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width-20
            text: "Scan"
            onClicked: {
                listView.enabled=false
                if(disconnect) {
                    text="Scanning..."
                    enabled = false
                    busyIndicator.running=true
                    bledevice.startScan()
                } else {
                    bledevice.disconnectFromDevice()
                }
            }
        }
        ListView {
            id: listView
            anchors.fill: parent
            anchors.topMargin: 50
            anchors.bottomMargin: 50
            width: parent.width
            clip: true
            model: bledevice.deviceListModel
            delegate: RadioDelegate {
                id: radioDelegate
                text: (index+1)+". "+modelData
                width: listView.width
                onCheckedChanged: {
                    console.log("checked", modelData, index)
                    scanButton.enabled=false;
                    scanButton.text="Connecting to "+modelData
                    listView.enabled = false;
                    bledevice.startConnect(index)
                }
            }
        }
        BusyIndicator {
            id: busyIndicator
            Material.accent: "Blue"
            anchors.centerIn: parent
            running: false
        }
    }
    Column {
        anchors.fill: parent
        anchors.topMargin: 10
        anchors.bottomMargin: 10
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        spacing: 10
        TextField {
            id: textTX
            width: parent.width
            placeholderText: qsTr("Send Text")
            color: "LightBlue"
            font.pixelSize: 18
        }
        TextArea {
            id: textRX
            width: parent.width
            placeholderText: qsTr("Received Text")
            readOnly: true
            color: "LightBlue"
            font.pixelSize: 18
        }
    }
    Connections {
        target: bledevice
        function onNewData(data) {
            textRX.text = data
            console.log("Read:", data)
        }
        function onScanningFinished() {
            listView.enabled=true
            scanButton.enabled=true
            scanButton.text="Scan"
            listView.enabled=true
            busyIndicator.running=false
            scanButton.enabled=true
            console.log("ScanningFinished")
        }
        function onConnectionStart() {
            disconnect = false
            busyIndicator.running=false
            toolButtonSend.enabled=true
            drawer.close()
            console.log("ConnectionStart")
        }
        function onConnectionEnd() {
            disconnect = true
            scanButton.text = "Connection End - Scan again"
            scanButton.enabled = true
            toolButtonSend.enabled = false
            bledevice.resetDeviceListModel()
            console.log("ConnectionEnd")
        }
    }
}
