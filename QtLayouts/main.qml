import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.3

Window {
    id: window1
    visible: true
    width: 550
    height: 400

    Column {
        id: column1
        anchors.fill: parent

        Button {
            id: button1
            text: qsTr("Button 1")
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
        }

        Button {
            id: button2
            text: qsTr("Button 2")
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
        }

        Button {
            id: button3
            text: qsTr("Button 3")
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
        }
    }
}

