import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    maximumWidth: 550
    maximumHeight: 400
    minimumHeight: 400
    minimumWidth: 550
    width: 550
    height: 400

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }
}

