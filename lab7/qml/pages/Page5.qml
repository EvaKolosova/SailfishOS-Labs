import QtQuick 2.0
import Sailfish.Silica 1.0
import "C:/Users/Evgen128/SailfishOSProjects/lab7/pages/CustomButton.qml"

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column
            width: page.width

            PageHeader { title: "Первая страница"}

            CustomButton {
                anchors.horizontalCenter: parent.horizontalCenter
                color_button: "red"

                Text { text: "Custom Button" }
            }

        }
    }
}
