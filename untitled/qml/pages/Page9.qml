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
                text: "Linux"
                onClicked: label.text = text
            }

            MenuItem {
                text: "Windows"
                onClicked: label.text = text
            }

            MenuItem {
                text: "iOS"
                onClicked: label.text = text
            }
        }

        PushUpMenu {
            MenuItem {
                text: "HARMAN"
                onClicked: label.text = text
            }

            MenuItem {
                text: "Intel"
                onClicked: label.text = text
            }

            MenuItem {
                text: "Yandex"
                onClicked: label.text = text
            }
        }

        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Страница")
            }
            Label {
                id: label
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Выбор не сделан"
            }
        }
    }
}
