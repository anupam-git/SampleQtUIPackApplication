import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import "icon.js" as MdiFont

RowLayout {
    id: rectangle
    width: 500
    height: 350
    property alias btnFbSigninColor: btnFbSignin.color
    property alias btnSigninColor: btnSignin.color
    property alias headerColor: header.color

    FontLoader {
        id: mdFont
        source: "qrc:/materialiconsregular.ttf"
    }

    Rectangle {
        id: header
        width: parent.width
        height: 70
        anchors.top: parent.top
        anchors.left: parent.left

        Text {
            text: "Sign In To Your Account"
            font.capitalization: Font.AllUppercase
            font.weight: Font.Bold
            font.pointSize: 16
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            color: "#fff"
        }
    }

    Rectangle {
        id: container
        width: parent.width
        anchors.bottom: footer.top
        anchors.top: header.bottom
        anchors.left: parent.left

        ColumnLayout {
            width: 250
            spacing: 15
            anchors.centerIn: parent

            RowLayout {
                width: 250
                height: 50

                Text {
                    color: "#cccccc"
                    font.family: mdFont.name
                    text: MdiFont.icons.person
                    font.pixelSize: 20
                }

                TextField {
                    Layout.fillWidth: true
                    placeholderText: "Username"
                    bottomPadding: 12
                    horizontalAlignment: Text.AlignLeft
                    color: "#666"
                }
            }

            RowLayout {
                width: 250
                height: 50

                Text {
                    color: "#cccccc"
                    font.family: mdFont.name
                    text: MdiFont.icons.lock
                    font.pixelSize: 20
                }

                TextField {
                    Layout.fillWidth: true
                    placeholderText: "Password"
                    bottomPadding: 12
                    horizontalAlignment: Text.AlignLeft
                    color: "#666"
                }
            }
        }
    }

    RowLayout {
        id: footer
        width: parent.width
        height: 70
        spacing: 0
        anchors.bottom: parent.bottom
        anchors.left: parent.left

        Rectangle {
            id: btnFbSignin
            width: parent.width / 2
            height: parent.height

            RowLayout {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                Image {
                    source: "facebook.png"
                }

                Text {
                    text: "Login"
                    font.capitalization: Font.AllUppercase
                    font.weight: Font.Bold
                    font.pointSize: 15
                    color: "#fff"
                }
            }

            MouseArea {
                anchors.fill: parent
                onPressed: mouse.accepted = false
                cursorShape: Qt.PointingHandCursor
            }
        }

        Rectangle {
            id: btnSignin
            width: parent.width / 2
            height: parent.height

            Text {
                text: "SignIn"
                font.weight: Font.Bold
                font.pointSize: 15
                font.capitalization: Font.AllUppercase
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
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
