import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    ListModel {
        id: task_manager
        ListElement { description: "Поспать"; date: "07.10.2019" }
        ListElement { description: "Покушать"; date: "08.10.2019" }
        ListElement { description: "Погулять"; date: "09.10.2019" }
        ListElement { description: "Почитать"; date: "10.10.2019" }
        ListElement { description: "Испечь торт"; date: "11.10.2019" }
    }

    SlideshowView {
        id: view
        anchors.centerIn: parent
        model: task_manager
        delegate: Rectangle {
            color: "transparent"
            width: view.itemWidth
            height: view.itemHeight
            Text {
                anchors.bottom: rect_strip.top
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 36
                text: date
            }

            Rectangle {
                id: rect_strip
                width: parent.width / 2
                height: 5
                radius: 10
                anchors.centerIn: parent
                color: "white"
            }

            Text {
                anchors.top: rect_strip.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 36
                text: description
            }
        }
    }
}
