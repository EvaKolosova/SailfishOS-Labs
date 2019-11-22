import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page;

    allowedOrientations: Orientation.All;
    Column {
        anchors.fill: parent;
        id: column;
        width: parent.width;
        spacing: Theme.paddingMedium;
        PageHeader {
            title: "Вторая страница"
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter;
            text: "back..."
            onClicked: {
                pageStack.navigateBack();
            }
        }
    }
}
