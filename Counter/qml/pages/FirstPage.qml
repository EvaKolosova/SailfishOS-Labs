import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        PullDownMenu {
        MenuItem {
            text: qsTr("Показать сумматор")
            onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        MenuItem {
            text: qsTr("Показать следующую страницу...")
            onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
            }
        }

        Column {
            id: column
            width: page.width
            property int sizeRect: 200
            spacing: Theme.paddingLarge
            Rectangle {
            width: page.width
            height: column.sizeRect * 2.5
            color: "transparent"
                Rectangle {
                width: column.sizeRect
                height: column.sizeRect
                x: column.sizeRect/2
                y: column.sizeRect/2
                color: "red"
                    Rectangle {
                    width: column.sizeRect
                    height: column.sizeRect
                    x: column.sizeRect
                    y: column.sizeRect/2
                    color: "green"
                        Rectangle {
                        width: column.sizeRect
                        height: column.sizeRect
                        x: column.sizeRect/2
                        y: -column.sizeRect/2
                        color: "blue"
                        }
                    }
                }
            }
            Rectangle {
                width: parent.width
                height: column.sizeRect + column.sizeRect/12
                color: "transparent"
                    Row {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: column.sizeRect / 6;
                    Rectangle {
                    width: column.sizeRect;
                    height: column.sizeRect
                    color: "red"
                    }
                    Rectangle {
                    width: column.sizeRect;
                    height: column.sizeRect
                    color: "green"
                    }
                    Rectangle {
                    width: column.sizeRect;
                    height: column.sizeRect
                    color: "blue"
                    }
                }
            }
            Rectangle {
            width: parent.width
            height: column.sizeRect + column.sizeRect/12
            color: "transparent"
                Row {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                spacing: column.sizeRect / 6;
                    Rectangle {
                    width: column.sizeRect;
                    height: column.sizeRect
                    color: "magenta"
                    }
                    Rectangle {
                    width: column.sizeRect;
                    height: column.sizeRect
                    color: "transparent"
                    }
                    Rectangle {
                    width: column.sizeRect;
                    height: column.sizeRect
                    color: "black"
                    }
                }
            }
            Rectangle {
            width: parent.width
            height: column.sizeRect * 2 + column.sizeRect * 2
            color: "transparent"
                Grid{
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                columns: 3
                rows: 2
                spacing: column.sizeRect / 6
                    Rectangle {
                    width: column.sizeRect;
                    height: column.sizeRect
                    color: "red"
                    }
                    Rectangle {
                    width: column.sizeRect;
                    height: column.sizeRect
                    color: "green"
                    }
                    Rectangle {
                    width: column.sizeRect;
                    height: column.sizeRect
                    color: "blue"
                    }
                    Rectangle {
                    width: column.sizeRect;
                    height: column.sizeRect
                    color: "magenta"
                    }
                    Rectangle {
                    width: column.sizeRect;
                    height: column.sizeRect
                    color: "transparent"
                    }
                    Rectangle {
                    width: column.sizeRect;
                    height: column.sizeRect
                    color: "black"
                    }
                }
            }
            Rectangle {
            width: parent.width
            height : column.sizeRect*1.5
            color: "transparent"
                Rectangle {
                id: startRect
                width: column.sizeRect*1.5
                height: column.sizeRect*1.5
                x: width/18
                y: height/18
                color: "black"
                    Rectangle {
                    width: parent.width
                    height: parent.height
                    color: parent.color
                    z: 1
                    transform: [Scale { xScale: 0.5; yScale: 1 }, Rotation { angle: 45}, Translate {x: column.sizeRect * 2.8} ]
                    }
                }
            }
            Rectangle {
            width: parent.width
            height: column.sizeRect * 4;
            color: "transparent"
                Rectangle {
                id: scaleRect;
                y: 50;
                x: 10;
                width: 0;
                height: 0;
                color: "blue";
                    SequentialAnimation {
                    loops: Animation.Infinite;
                    id: animation;
                    running: true
                        ParallelAnimation {
                            PropertyAnimation {
                            target: scaleRect;
                            property: "y";
                            from: 50; to: page.width - column.sizeRect - 25; duration: 2500;
                            }
                            PropertyAnimation {
                            target: scaleRect;
                            property: "x";
                            from: 10; to: page.width - column.sizeRect - 25; duration: 2500;
                            }
                            PropertyAnimation {
                            target: scaleRect;
                            property: "width";
                            from: 0; to: column.sizeRect; duration: 2500;
                            }
                            PropertyAnimation {
                            target: scaleRect;
                            property: "height";
                            from: 0; to: column.sizeRect; duration: 2500;
                            }
                        }
                        ParallelAnimation {
                            PropertyAnimation {
                            target: scaleRect;
                            property: "y";
                            from: parent.width - column.sizeRect - 50; to: 50; duration: 2500;
                            }
                            PropertyAnimation {
                            target: scaleRect;
                            property: "x";
                            from: page.width - column.sizeRect - 25; to: 10; duration: 2500;
                            }
                            PropertyAnimation {
                            target: scaleRect;
                            property: "width";
                            from: column.sizeRect; to: 0; duration: 2500;
                            }
                            PropertyAnimation {
                            target: scaleRect;
                            property: "height";
                            from: column.sizeRect; to: 0; duration: 2500;
                            }
                        }
                    }
                }
           }
       }
   }
}
