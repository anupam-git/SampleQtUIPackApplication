import QtQuick 2.4
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0
import "icon.js" as MdiFont

RowLayout {
    width: 450
    height: 200
    property alias bottomContainerColor: bottomContainer.color

    FontLoader {
        id: mdFont
        source: "qrc:/materialiconsregular.ttf"
    }

    Rectangle {
        id: topContainer
        width: parent.width
        height: 150
        color: "#ffffff"
        anchors.top: parent.top
        anchors.left: parent.left

        RowLayout {
            spacing: 25
            anchors.centerIn: parent

            Image {
                id: imgUser
                width: 96
                height: 96
                fillMode: Image.PreserveAspectCrop
                sourceSize.height: 96
                sourceSize.width: 96
                source: "user.png"
            }

            ColumnLayout {
                width: 200
                height: 96

                Text {
                    id: userName
                    text: "<b>Anupam</b> Basak"
                    font.pointSize: 14
                    color: "#444"
                }
                Text {
                    id: userDesc
                    text: "<b>Full Stack</b> Developer"
                    font.pointSize: 10
                    color: "#666"
                    anchors.top: userName.bottom
                    anchors.topMargin: 10
                }
                Text {
                    id: userEmail
                    text: "<i><b>anupam.basak27</b>@gmail.com</i>"
                    font.pointSize: 10
                    color: "#666"
                }
            }
        }
    }

    Rectangle {
        id: bottomContainer
        width: parent.width
        height: 50
        color: "#fff"
        anchors.top: topContainer.bottom
        anchors.left: parent.left

        RowLayout {
            spacing: 1
            anchors.fill: parent

            Rectangle {
                width: parent.width / 3
                height: parent.height
                color: "#0F5B7D"

                Text {
                    anchors.centerIn: parent
                    text: MdiFont.icons.thumbUp
                    font.pointSize: 20
                    font.family: mdFont.name
                    color: "#fff"
                }

                MouseArea {
                    anchors.fill: parent
                    onPressed: mouse.accepted = false
                    cursorShape: Qt.PointingHandCursor
                }
            }
            Rectangle {
                width: parent.width / 3
                height: parent.height
                color: "#0F5B7D"

                Text {
                    anchors.centerIn: parent
                    text: MdiFont.icons.favorite
                    font.pointSize: 20
                    font.family: mdFont.name
                    color: "#fff"
                }

                MouseArea {
                    anchors.fill: parent
                    onPressed: mouse.accepted = false
                    cursorShape: Qt.PointingHandCursor
                }
            }
            Rectangle {
                width: parent.width / 3
                height: parent.height
                color: "#0F5B7D"

                Text {
                    anchors.centerIn: parent
                    text: MdiFont.icons.thumbDown
                    font.pointSize: 20
                    font.family: mdFont.name
                    color: "#fff"
                }

                MouseArea {
                    anchors.fill: parent
                    onPressed: mouse.accepted = false
                    cursorShape: Qt.PointingHandCursor
                }
            }
        }
    }
}
