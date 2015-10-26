import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2

Window {
    visible: true
    width: 550
    height: 400

    Column {
        id: column1
        anchors.fill: parent

        Button {
            id: button1
            text: qsTr("Button")

            onClicked: messageDialog.show(qsTr("Button1 Clicked"))
        }

        Button {
            id: button2
            text: qsTr("Button")

            onClicked: messageDialog.show(qsTr("Button2 Clicked"))
        }

        MessageDialog {
            id: messageDialog
            title: qsTr("May I have your attention, please?")

            function show(caption) {
                messageDialog.text = caption;
                messageDialog.open();
            }
        }
    }
}

