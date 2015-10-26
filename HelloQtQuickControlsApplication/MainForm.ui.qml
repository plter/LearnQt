import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Item {
    width: 640
    height: 480

    property alias button1: button1
    property alias button2: button2

    ColumnLayout {
        id: columnLayout1
        anchors.fill: parent

        Button {
            id: button4
            text: qsTr("Button")
        }

        Button {
            id: button2
            text: qsTr("Button")
        }

        Button {
            id: button3
            text: qsTr("Button")
        }

        Button {
            id: button1
            text: qsTr("Button")
        }

        CheckBox {
            id: checkBox1
            text: qsTr("Check Box")
        }

        CheckBox {
            id: checkBox2
            text: qsTr("Check Box")
        }



    }
}

