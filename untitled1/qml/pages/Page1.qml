import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page;
    allowedOrientations: Orientation.All;

    SilicaFlickable {
        anchors.fill: parent;

        PullDownMenu {
               MenuItem {
                   text: qsTr("Добавление и удаление элементов SilicaListView")
                   onClicked: pageStack.push(Qt.resolvedUrl("Page2.qml"))
                   }
               MenuItem {
                   text: qsTr("Элементы в JavaScript модели")
                   onClicked: pageStack.push(Qt.resolvedUrl("Page3.qml"))
                   }
               MenuItem {
                   text: qsTr("Элементы в XmlListModel модели с сайта")
                   onClicked: pageStack.push(Qt.resolvedUrl("Page4.qml"))
                   }
               MenuItem {
                   text: qsTr("Элементы из XMLHttpRequest с сайта")
                   onClicked: pageStack.push(Qt.resolvedUrl("Page5.qml"))
                   }
               MenuItem {
                   text: qsTr("Add/delete notes with DB and show them")
                   onClicked: pageStack.push(Qt.resolvedUrl("Page6.qml"))
                   }
               MenuItem {
                   text: qsTr("ConfigurationValue")
                   onClicked: pageStack.push(Qt.resolvedUrl("Page7.qml"))
                   }
               MenuItem {
                   text: qsTr("ConfigurationGroup")
                   onClicked: pageStack.push(Qt.resolvedUrl("Page8.qml"))
                   }
        }

        ListModel {
            id: dataModel
            ListElement { color: "white"; textcolor:"black"; text: "розовый" }
            ListElement { color: "blue"; textcolor:"white"; text: "голубой" }
            ListElement { color: "green";  textcolor:"blue";  text: "зеленый" }
            ListElement { color: "yellow"; textcolor:"red"; text: "желтый" }
        }

        SilicaListView {
            anchors.fill: parent
            header: PageHeader { title: "List model" }
            model: dataModel
            delegate: Rectangle {
                width: parent.width
                height: 100
                color: model.color
                Text {
                    anchors.centerIn: parent
                    text: model.text
                    color: model.textcolor
                }
            }
        }
    }
}
