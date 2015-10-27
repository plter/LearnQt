import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    width: 550
    height: 400

    Image {
        id: image1
        fillMode: Image.PreserveAspectCrop
        anchors.fill: parent
        source: "pictures/snow.jpg"
    }


}

