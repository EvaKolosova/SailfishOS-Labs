import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
     id: dialog;
     Column {
       anchors.fill: parent;
       id: column;
       width: parent.width;
       spacing: Theme.paddingMedium;
       DialogHeader {}
       Row {
       spacing: 160;
       x: 25;
           Label {
           text: "Первое число:"
           }
           Label {
           text: "Второе число:"
           }
       }
       Row {
       width: parent.width;
       spacing: 25;
           TextField {
           id: number1;
           width: parent.width/2 - 12.5;
           }
           TextField {
           id: number2;
           width: parent.width/2 - 12.5;
           }
       }
       Button {
       width: parent.width;
       text: "Суммировать";
           onClicked: {
           console.log(parseInt(number1.text) + parseInt(number2.text));
           }
       }
   }
}
