import QtQuick 2.12
import QtQuick.Controls 2.12

Window {
   id: applicationWindow

   visible: true
   width: 640
   height: 480

   Column {
       anchors.horizontalCenter: parent.horizontalCenter
       anchors.verticalCenter: parent.verticalCenter

       spacing: 10

       // Kolejność definiowania obiektów, definiuje ich kolejność wyświetlania!

       BusyIndicator { anchors.horizontalCenter: parent.horizontalCenter }

       Button {
           text: "Wygeneruj losowy błąd"
           highlighted: true
           anchors.horizontalCenter: parent.horizontalCenter

           // tutaj otwieram okno dialogowe:
           onClicked: dialog.open()
       }

       Button {
           text: "Wygeneruj duży losowy błąd"
           highlighted: true
           anchors.horizontalCenter: parent.horizontalCenter

           // tutaj otwieram okno dialogowe:
           onClicked: dialog2.open()
       }
   }

   Dialog {
       id: dialog

       // Zdefiniowanie własnego property:
       property int error: 0

       anchors.centerIn: parent
       width: parent.width * 0.7

       modal: true
       title: "Uwaga!"
       closePolicy: Dialog.NoAutoClose

       onAboutToShow: {
           checkBox.checked = false
           error = Math.round(Math.random() * 1000)
       }

       Column {
           id: column

           spacing: 20
           anchors.fill: parent

           Label {
               id: label

               text: "Nieoczekiwanie wystąpił błąd numer <b>" + dialog.error + "</b>. Potwierdź przeczytanie informacji."
               wrapMode: Text.WordWrap
               textFormat: Text.RichText
               width: parent.width
           }

           CheckBox {
               id: checkBox

               text: "Zrozumiałem"
               anchors.right: parent.right
           }

           Row {
               anchors.right: parent.right
               spacing: 20

               DialogButtonBox {
                   id: ok

                   enabled: checkBox.checked
                   standardButtons: Dialog.Ok

                   onClicked: {
                       // tutaj emituje sygnał, który mogę wykorzystać "wyżej"
                       dialog.accepted()

                       // tutaj zamykam okno dialogowe
                       dialog.close()
                   }
               }

               // Możemy zdefiniować więcej przycisków z różnymi funkcjami:
               // DialogButtonBox {
               //    // ...
               //    standardButtons: Dialog.Close
               //    // ...
               // }
           }
       }
   }
   Dialog {
       id: dialog2

       // Zdefiniowanie własnego property:
       property int error: 0

       anchors.centerIn: parent
       width: parent.width * 0.7

       modal: true
       title: "Uwaga2!"
       closePolicy: Dialog2.NoAutoClose

       onAboutToShow: {
           checkBox2.checked = false
           error = Math.round(Math.random() * 10000000)
       }

       Column {
           id: column2

           spacing: 20
           anchors.fill: parent

           Label {
               id: label2

               text: "NieocNieoczekiwanie wystąpił błąd numezekiwanie wystąpił błąd numer <b>" + dialog2.error + "</b>. Potwierdź przeczytanie informacji."
               wrapMode: Text.WordWrap
               textFormat: Text.RichText
               width: parent.width
           }

           CheckBox {
               id: checkBox2

               text: "Zrozumiałem"
               anchors.right: parent.right
           }

           Row {
               anchors.right: parent.right
               spacing: 20

               DialogButtonBox {
                   id: ok2

                   enabled: checkBox2.checked
                   standardButtons: Dialog.Ok

                   onClicked: {
                       // tutaj emituje sygnał, który mogę wykorzystać "wyżej"
                       dialog2.accepted()

                       // tutaj zamykam okno dialogowe
                       dialog2.close()
                   }
               }

               // Możemy zdefiniować więcej przycisków z różnymi funkcjami:
               // DialogButtonBox {
               //    // ...
               //    standardButtons: Dialog.Close
               //    // ...
               // }
           }
       }
   }
}
