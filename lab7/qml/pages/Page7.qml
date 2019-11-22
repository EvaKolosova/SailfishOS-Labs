import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            PageHeader { title: "Седьмая страница"}

            Label {
                id: label_count_pushed
                text: "Кол-во добавленных страниц: " + addedPages
            }

            Label {
                id: label_count_poped
                text: "Кол-во удаленных страниц: " + deletedPages
            }
        }
    }
}
