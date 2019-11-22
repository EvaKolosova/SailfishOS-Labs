import QtQuick 2.0
import Sailfish.Silica 1.0
import "C:/Users/Evgen128/SailfishOSProjects/lab7/pages/TrafficLight.qml"

Page {
    id: page

    allowedOrientations: Orientation.All
    Component.onCompleted: traffic_light.change_state()

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column
            width: page.width

            PageHeader { title: "Четвертая страница"}

            TrafficLight {
                id: traffic_light
            }
        }
    }
}
