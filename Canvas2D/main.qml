import QtQuick 2.4
import QtQuick.Window 2.2
import "main.js" as Main

Window {
    title: qsTr("Canvas2D")
    width: 550
    height: 400
    maximumWidth: 550
    maximumHeight: 400
    minimumWidth: 550
    minimumHeight: 400
    visible: true

    Canvas{
        id: canvas
        anchors.fill: parent
        onPaint: {
            Main.update()
        }
    }

    Timer{
        interval: 20
        running: true
        repeat: true
        onTriggered: {
            canvas.requestPaint()
        }
    }

    Component.onCompleted: {
        Main.init(canvas)
    }
}

