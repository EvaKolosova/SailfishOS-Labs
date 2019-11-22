import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    Column {
        id: column

        width: page.width
        spacing: Theme.paddingLarge
        PageHeader {
            title: qsTr("Страница")
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Открыть диалог"
            onClicked: {
                var dialog = pageStack.push(Qt.resolvedUrl("DialogTextField.qml"));
                dialog.accepted.connect(function() {
                    text_field.text = dialog.text_field_value;
                })
            }
        }

        TextField {
            id: text_field
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
