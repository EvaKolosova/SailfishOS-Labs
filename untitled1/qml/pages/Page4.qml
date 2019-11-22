import QtQuick 2.0
import QtQuick.XmlListModel 2.0
import Sailfish.Silica 1.0

Page {
    XmlListModel {
        id: xmlListModel
        source: "http://www.cbr.ru/scripts/XML_daily.asp"
        query: "/ValCurs/Valute"
        XmlRole { name: "Name"; query: "Name/string()";}
        XmlRole { name: "Value"; query: "Value/string()";}
    }
    SilicaListView {
        anchors.fill: parent
        header: PageHeader { title: "Сurrency" }
        model: xmlListModel
        delegate: Column {
            x: 10; width: parent.width - 2 * x
            Label {
                width: parent.width
                wrapMode: Text.WordWrap
                text: Name + " - " + Value;
            }
        }
    }
}
