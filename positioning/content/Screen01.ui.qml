/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import positioning

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor


    ColumnExample {
        id: colEx;
    }
    RowExample {
        id: rowEx;
        anchors.left: colEx.right;
    }

    GridExample {
        id: gridEx;
        anchors.left: rowEx.right;
    }

    FlowExample {
        id: flowEx;
        anchors.top: colEx.bottom;
    }
    RepeaterExample {
        id: repeaterEx;
        anchors.top: flowEx.bottom;
    }
}
