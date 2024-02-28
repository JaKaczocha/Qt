import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts

Rectangle {
    id: root;
    width: childrenRect.width;
    height: childrenRect.height;

    gradient: Gradient {
        GradientStop {
            position: 0.0;
            color: "#125599";
        }
        GradientStop {
            position: 1.0;
            color: "#551133";
        }
    }

    ColumnLayout {
        Grid {
            spacing: 8;
            columns: 5;

            EasingType {
                easingType: Easing.Linear;
                title: 'Linear';
                onClicked: {
                    animation.easing.type = easingType;
                    box.toggle = !box.toggle;
                }
            }
            EasingType {
                easingType: Easing.InExpo;
                title: 'InExpo';
                onClicked: {
                    animation.easing.type = easingType;
                    box.toggle = !box.toggle;
                }
            }
            EasingType {
                easingType: Easing.OutExpo;
                title: 'OutExpo';
                onClicked: {
                    animation.easing.type = easingType;
                    box.toggle = !box.toggle;
                }
            }
            EasingType {
                easingType: Easing.InOutExpo;
                title: 'InOutExpo';
                onClicked: {
                    animation.easing.type = easingType;
                    box.toggle = !box.toggle;
                }
            }
            EasingType {
                easingType: Easing.InOutCubic;
                title: 'InOutCubic';
                onClicked: {
                    animation.easing.type = easingType;
                    box.toggle = !box.toggle;
                }
            }
            EasingType {
                easingType: Easing.SineCurve;
                title: 'SineCurve';
                onClicked: {
                    animation.easing.type = easingType;
                    box.toggle = !box.toggle;
                }
            }
            EasingType {
                easingType: Easing.InOutCirc;
                title: 'InOutCirc';
                onClicked: {
                    animation.easing.type = easingType;
                    box.toggle = !box.toggle;
                }
            }
            EasingType {
                easingType: Easing.InOutElastic;
                title: 'InOutElastic';
                onClicked: {
                    animation.easing.type = easingType;
                    box.toggle = !box.toggle;
                }
            }
            EasingType {
                easingType: Easing.InOutBack;
                title: 'InOutBack';
                onClicked: {
                    animation.easing.type = easingType;
                    box.toggle = !box.toggle;
                }
            }
            EasingType {
                easingType: Easing.InOutBounce;
                title: 'InOutBounce';
                onClicked: {
                    animation.easing.type = easingType;
                    box.toggle = !box.toggle;
                }
            }
        }
        Item {
            height: 80;
            Layout.fillWidth: true;

            Box {
                id: box;
                property bool toggle;
                x: toggle ? 20: root.width - width - 20;
                anchors.verticalCenter: parent.verticalCenter;
                gradient: Gradient {
                    GradientStop { position: 0.0; color: '#205580'}
                    GradientStop {position: 1.0; color: '#560012'}
                }
                Behavior on x {
                    NumberAnimation {
                        id: animation;
                        duration: 500;
                    }
                }
            }
        }
    }
}
