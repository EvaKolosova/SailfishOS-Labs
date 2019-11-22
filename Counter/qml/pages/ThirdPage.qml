import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page2
    allowedOrientations: Orientation.All
    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height + 1300

        Column {
           anchors.fill: parent;
           id: column;
           width: parent.width;
           spacing: Theme.paddingMedium;

           Label {
               id: labelForNumber;
               anchors.horizontalCenter: parent.horizontalCenter;
               text: "Введите число:"
           }

           TextField {
               id: textfieldForNumber;
               width: parent.width;
               label: "Число"
               placeholderText: label;
           }

           Button {
               id:pressedButton;
               anchors.horizontalCenter: parent.horizontalCenter;
               width: parent.width;
               text: "Нажми на меня";
                   onClicked: {
                       pressedButton.color = "blue";
                       pressedButton.text = "Спасибочки ^_^ ";
                   }
             }
           Button {
              id: holdedButton;
              anchors.horizontalCenter: parent.horizontalCenter;
              highlightBackgroundColor: "lightblue"
              text: "Удержи меня"
              onPressedButtonsChanged: {
                  if(down){
                      holdLabel.text = "Нажата"
                  }
                  else {
                      holdLabel.text = "Отпущена"
                  }
              }
           }
          Label {
              id: holdLabel;
              anchors.horizontalCenter: parent.horizontalCenter;
              text: "Отпущена"
          }

          ValueButton {
              width: parent.width;
              property int count: 0
              label: "Счетчик"
              description: "Считает количество нажатий"
              value: count;
              onClicked: count++;
          }

          DatePicker {
              id: datePicker;
              height: datePicker.height + 500;
              date: new Date();
              daysVisible: true
              monthYearVisible: true
              onDateTextChanged:
                  console.log(dateText);
          }

          Item {
              height: timePicker.height;
              width: parent.width;
              TimePicker {
                  width: parent.width
                  id: timePicker;
                  hour: 5
                  minute: 12
                  onTimeTextChanged: console.log(timeText)
              }
              Label {
                  anchors.centerIn: timePicker;
                  text: timePicker.timeText
                  font.pixelSize: Theme.fontSizeExtraLarge
              }
          }

          ComboBox {
              anchors.horizontalCenter: parent.horizontalCenter;
              label: "ComboBox"
              description: "Выбери один из..."
              menu: ContextMenu {
                  id: menu
                  MenuItem { text: "Плюшки" }
                  MenuItem { text: "Ватрушки" }
                  MenuItem { text: "Завитушки" }
              }
              onCurrentIndexChanged: console.log(menu.children[currentIndex].text)
          }

          Switch {
              anchors.horizontalCenter: parent.horizontalCenter;
              id: mute;
              iconSource: "image://theme/icon-m-speaker-mute?"
                           + (checked ? Theme.highlightColor : Theme.primaryColor);
          }
          Label {
              anchors.horizontalCenter: parent.horizontalCenter
              text: mute.checked?"Включен":"Выключен";
          }

          Slider {
              width: parent.width
              label: "Текущее значение = " + value;
              minimumValue: 0;
              maximumValue: 100;
              value: 0;
              stepSize: 1;
          }

          Rectangle {
              color: "transparent"
              width: parent.width;
              height: 200;
          }
      }
   }
}
