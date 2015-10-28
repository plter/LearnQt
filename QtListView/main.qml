import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    width: 550
    height: 400

    ListView {
        anchors.fill: parent

        model: ContactModel {}
        delegate: Text {
            text: name + ": " + number
        }
    }
}

