import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    ListModel {
        id: task_manager
        ListElement { description: "Поспать"; date: "07.10.2019" }
        ListElement { description: "Покушать"; date: "08.10.2019" }
        ListElement { description: "Погулять"; date: "09.10.2019" }
        ListElement { description: "Почитать"; date: "10.10.2019" }
        ListElement { description: "Испечь торт"; date: "11.10.2019" }
    }

    SilicaListView {
        anchors.fill: parent
        model: task_manager
        header: PageHeader { title: "Задачи" }
        section {
            property: 'date'
            delegate: SectionHeader { text: section }
        }
        delegate: Text { text: description }
    }
}
