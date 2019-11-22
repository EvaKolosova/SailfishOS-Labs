import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page;
    allowedOrientations: Orientation.All;
    SilicaFlickable {
        anchors.fill: parent;

        PullDownMenu {
               MenuItem {
                   text: qsTr("Диалог с текстом")
                   onClicked: pageStack.push(Qt.resolvedUrl("Page3.qml"))
                   }
               MenuItem {
                   text: qsTr("Диалог с датой")
                   onClicked: pageStack.push(Qt.resolvedUrl("Page4.qml"))
                   }
               MenuItem {
                   text: qsTr("Диалог с временем")
                   onClicked: pageStack.push(Qt.resolvedUrl("Page5.qml"))
                   }
               MenuItem {
                   text: qsTr("Диалог с задачами на неделю")
                   onClicked: pageStack.push(Qt.resolvedUrl("Page6.qml"))
                   }
               MenuItem {
                   text: qsTr("Диалог с сайтом")
                   onClicked: pageStack.push(Qt.resolvedUrl("Page7.qml"))
                   }
               MenuItem {
                   text: qsTr("Диалог с задачами на неделю на листах")
                   onClicked: pageStack.push(Qt.resolvedUrl("Page8.qml"))
                   }
               MenuItem {
                   text: qsTr("Диалог с выбором сверху и снизу")
                   onClicked: pageStack.push(Qt.resolvedUrl("Page9.qml"))
                   }
               MenuItem {
                   text: qsTr("Диалог с выбором элемента")
                   onClicked: pageStack.push(Qt.resolvedUrl("Page10.qml"))
                   } 
        }

        Column {
           anchors.fill: parent;
           id: column;
           width: parent.width;
           spacing: Theme.paddingMedium;
           
           PageHeader {
               title: qsTr("Cтек")
           }

           Label {
               id: stackLabel;
               anchors.horizontalCenter: parent.horizontalCenter;
               text: "Глубина стека: " + pageStack.depth;
           }

           Button {
               id:backButton;
               anchors.horizontalCenter: parent.horizontalCenter;
               text: "Назад";
                   onClicked: {
                       if(pageStack.depth > 1)
                       {
                           pageStack.pop();
                       }
                   }
           }

           Button {
              id: nextButton;
              anchors.horizontalCenter: parent.horizontalCenter;
              text: "Вперёд"
              onClicked:{
                  pageStack.push(Qt.resolvedUrl("Page1.qml"));
                 }
              }

           Label {
               anchors.horizontalCenter: parent.horizontalCenter;
               text: "Первая страница \n(функционал прикрепления)";
           }

           Button {
               anchors.horizontalCenter: parent.horizontalCenter;
               text: "pushAttached()";
               onClicked: {
                   pageStack.pushAttached(Qt.resolvedUrl("Page2.qml"));
                   pageStack.navigateForward();
               }
           }

           Button {
               anchors.horizontalCenter: parent.horizontalCenter;
               text: "popAttached()";
               onClicked: pageStack.popAttached();
           }
       }
   }
}
