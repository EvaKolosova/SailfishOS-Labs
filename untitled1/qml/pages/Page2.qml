import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page;
    property int count: dataModel.count + list.num_remove_item;
    allowedOrientations: Orientation.All;

    Column{
        id:column;
        anchors.fill: parent;
        ListModel { id: dataModel }

        SilicaListView {
            id:list
            width: parent.width;
            height: parent.height - addButton.height;
            property int num_remove_item: 0
            header: PageHeader { title: "Simple List" }
            model: dataModel
            delegate: Rectangle {
                width: parent.width; height: 70; color: "skyblue";
                Text {
                    anchors.centerIn: parent
                    text: model.text
                }
                MouseArea {
                    id:mouse
                    anchors.fill: parent
                    onClicked: {
                        dataModel.remove(model.index, 1);
                        list.num_remove_item = list.num_remove_item + 1;
                    }
                }
            }
        }
        Button {
            id: addButton
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Add item"
            onClicked: {
                dataModel.append({ text: "Item #" + count });
            }
        }

    }
}
