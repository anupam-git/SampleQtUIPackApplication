import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtMultimedia 5.9
import "icon.js" as MdiFont

Rectangle {
    property alias video: video
    property alias controls: controls
    property alias btnPlay: btnPlay
    property alias btnPlayText: btnPlay.text
    property alias btnMuteText: btnMute.text
    property alias videoMouseArea: videoMouseArea
    property alias btnMute: btnMute
    property alias seekbar: seekbar
    property alias seekbarMouseArea: seekbarMouseArea

    FontLoader {
        id: mdFont
        source: "qrc:/materialiconsregular.ttf"
    }

    Rectangle {
        id: rectangle
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0

        color: "#fff"

        Video {
            id: video
            anchors.fill: parent

            source: "samplevideo.mp4"

            MouseArea {
                id: videoMouseArea
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.bottom: controls.top
                anchors.bottomMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
            }

            Rectangle {
                id: controls
                x: 0
                y: 0

                height: 30
                color: "#ffffff"

                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom

                RoundButton {
                    id: btnPlay
                    width: 40
                    height: 40
                    radius: 30

                    flat: true

                    anchors.left: parent.left
                    anchors.leftMargin: 8

                    text: MdiFont.icons.playArrow
                    anchors.verticalCenter: parent.verticalCenter
                    font.weight: Font.Normal
                    font.family: mdFont.name
                    font.pixelSize: 24

                    MouseArea {
                        anchors.fill: parent
                        onPressed: mouse.accepted = false
                        cursorShape: Qt.PointingHandCursor
                    }
                }

                ProgressBar {
                    id: seekbar
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    anchors.top: parent.top
                    anchors.topMargin: 0

                    anchors.right: btnMute.left
                    anchors.rightMargin: 0
                    anchors.left: btnPlay.right
                    anchors.leftMargin: 8

                    value: 0

                    MouseArea {
                        id: seekbarMouseArea
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                    }
                }

                RoundButton {
                    id: btnMute
                    width: 40
                    height: 40
                    radius: 30

                    flat: true

                    anchors.right: parent.right
                    anchors.rightMargin: 8
                    anchors.verticalCenter: parent.verticalCenter

                    text: MdiFont.icons.volumeUp
                    font.family: mdFont.name
                    font.pixelSize: 24

                    MouseArea {
                        anchors.fill: parent
                        onPressed: mouse.accepted = false
                        cursorShape: Qt.PointingHandCursor
                    }
                }
            }
        }
    }
}
