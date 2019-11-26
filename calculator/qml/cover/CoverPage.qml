import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    id: page
    Item {
        id: keyboard
        anchors {
            top: page.top
            bottom: page.bottom
            left: page.left
            right: page.right
        }

        Label{
            anchors.centerIn: parent
            text: "SciCalc"
            color: Theme.secondaryColor
            font.pixelSize: Theme.fontSizeExtraLarge
        }
    }
}



