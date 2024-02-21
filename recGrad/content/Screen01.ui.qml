/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import recGrad

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    gradient: Gradient {
        orientation: Gradient.Horizontal
        GradientStop {position: 0.0
            color: "#ffa000"}
        GradientStop {position: 0.5; color: "#00ff00"}
        GradientStop {position: 1.0; color: "#00a0ff"}



    }


}
