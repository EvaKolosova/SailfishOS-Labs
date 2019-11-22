import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0
Page {
    id:page8
    ConfigurationGroup {
        id: settings
        path: "/apps/app_name/settings"
        property string text: ""
        property bool flags: false
    }
    Column {
        width: parent.width
        PageHeader { title: "ConfigurationGroup" }
        TextSwitch {
            id:switch1
            text: "flags"
            description: "settings"
        }
        TextField{
            id:text1
            width: parent.width
        }
        Label{
            id:leb
            text: ""
        }
        Button {
             width: parent.width
             text: "Save"
             onClicked: {
                 settings.text = text1.text
                 settings.flags = switch1.checked
                 leb.text = settings.text + " & " + settings.flags + " are saved"
             }
         }
    }
}
