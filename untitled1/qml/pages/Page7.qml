import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0
Page {
    id:page7
    ConfigurationValue {
        id: set_for_text
        key: "/apps/app_name/setting_name"
        defaultValue: ""
    }
    ConfigurationValue{
        id:set_for_switch
        key: "/apps/app_name/setting_name"
        defaultValue: false
    }
    Column {
        width: parent.width
        PageHeader { title: "ConfigurationValue" }
        TextSwitch {
            id:switch1
            text: "flags"
        }
        TextField{
            id:text1
            width: parent.width
        }
        Label{
            id:leb
            text: set_for_switch.value;
        }
        Button {
             width: parent.width
             text: "Save"
             onClicked: {
                 set_for_text.value = text1.text
                 set_for_switch.value = switch1.checked
                 leb.text = set_for_text.value + " & " + set_for_switch.value + " are saved"
             }
         }
        
    }
}
