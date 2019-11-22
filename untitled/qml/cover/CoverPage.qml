import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    Label {
        id: cover_label
        text: "0"
        anchors.centerIn: parent
    }

    CoverActionList {
        CoverAction {
            iconSource: "image://theme/icon-cover-cancel"
            onTriggered: cover_label.text--
        }

        CoverAction {
            iconSource: "image://theme/icon-cover-new"
            onTriggered: cover_label.text++
        }
    }
}
