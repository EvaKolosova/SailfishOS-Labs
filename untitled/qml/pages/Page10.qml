import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaListView {
        anchors.fill: parent

        model: ListModel {
            id: listModel
            Component.onCompleted: {
                for (var i = 0; i < 10; i++) {
                    append({"name": "Item " + i})
                }
            }
        }

        delegate: ListItem {
            width: ListView.view.width

            Label {
                id: label
                text: model.name
                anchors.centerIn: parent
            }

            menu: ContextMenu {
                MenuItem {
                    text: "Sub-item 1"
                    onClicked: console.log(text +" from " + model.name + " choosen")
                }
                MenuItem {
                    text: "Sub-item 2"
                    onClicked: console.log(text +" from " + model.name + " choosen")
                }
            }
        }
    }
}
