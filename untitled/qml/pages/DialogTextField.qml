import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
    property alias text_field_value: text_field.text

    Column {
        width: parent.width
        spacing: Theme.paddingMedium

        DialogHeader {}

        TextField {
            id: text_field
            width: parent.width
        }
    }
}
