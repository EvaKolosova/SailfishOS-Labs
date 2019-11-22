import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    id:page5
    // loadNews()
    XmlListModel {
        id: xmlModel
        query: "/ValCurs/Valute"
        XmlRole{ name: "Name"; query: "Name/string()";}
        XmlRole{ name:"Value"; query:"Value/string()";}
    }
    SilicaListView {
        anchors.fill: parent
        header: PageHeader { title: "XMLHttpRequest" }
        model: xmlModel
        delegate: Column {
            x: 5; width: parent.width - 2 * x
            Label {
                width: parent.width
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere//WordWrap
                text: qsTr(Name)+" \n"+Value
            }
        }
    }
    Component.onCompleted: {
        var xhr = new XMLHttpRequest();
        xhr.open('GET', "http://www.cbr.ru/scripts/XML_daily_eng.asp", true);

        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                xmlModel.xml = xhr.responseText.replace("windows-1251, utf-8");
            }
        }
        xhr.send();
    }
}
