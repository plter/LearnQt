import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2

Window {
    visible: true
    width: 550
    height: 400



    Image {
        id: image
        fillMode: Image.PreserveAspectCrop
        anchors.fill: parent
    }

    Button{
        text: qsTr("Open picture")
        onClicked: {
            dlgOpenPicture.open()
        }
    }

    FileDialog{
        id: dlgOpenPicture
        nameFilters: ["Images (*.jpg *.png)"]
        title: qsTr("Please choose a file")
        folder: shortcuts.pictures
        onAccepted: {
            image.source = fileUrl
        }
    }
}

