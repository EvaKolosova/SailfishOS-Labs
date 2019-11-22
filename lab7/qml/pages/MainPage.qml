import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaListView {
        anchors.fill: parent

        header: PageHeader { title: "Основная страница" }

        model: ListModel {
            id: listModel
            Component.onCompleted: {
                append({"name": "Светофорище"});

                append({"name": "Светофорище с человечком"});

                append({"name": "Текст-перевертыш-вращайка"});

                append({"name": "Светофор, отдельный компонент"});

                append({"name": "Странная кнопочка"});

                append({"name": "Секундомерище"});

                append({"name": "Обработчик сигналов PageStack"});
            }
        }

        delegate: ListItem {
            width: ListView.view.width
            contentHeight: label_name.height

            Label {
                id: label_name
                text: model.name
                font.pixelSize: 48
                anchors.horizontalCenter: parent.horizontalCenter
            }

            onClicked: {
                var idx = parseInt(index) + 1;
                pageStack.push(Qt.resolvedUrl("Page" + idx.toString() + ".qml"));
            }
        }
    }
}
