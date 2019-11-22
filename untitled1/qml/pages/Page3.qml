import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page;
    allowedOrientations: Orientation.All;

    property var modelData: [
           { color: "orange", text: "first, baby" },
           { color: "skyblue"},
           { color: "green", text: "а я третий!" },
           { color: "pink", text: "^.^" }
       ]
   SilicaListView {
       anchors.fill: parent
       header: PageHeader { title: "java-script model" }
       model: modelData
       spacing: 10
       delegate: Rectangle {
           width: parent.width
           height: 100
           color: modelData.color
           Text {
               anchors.centerIn: parent
               text: modelData.text || "пустота... (нет буковок)"
           }
       }
   }
}
