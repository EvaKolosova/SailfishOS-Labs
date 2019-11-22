import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaWebView {
        id: web_view
        anchors {
            top: parent.top; bottom: url_field.top;
            left: parent.left; right: parent.right;
        }
        url: "https://www.google.com"
    }

    TextField {
        id: url_field
        anchors {
            left: parent.left; right: parent.right;
            bottom: parent.bottom;
        }
        text: web_view.url
        label: web_view.title
        EnterKey.onClicked: web_view.url = text
    }
}
