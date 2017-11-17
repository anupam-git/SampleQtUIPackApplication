import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.3
import "Icon.js" as MdiFont

ToolBar {
    property alias menuButton: menuButton

    anchors.fill: parent
    Material.foreground: "white"

    RowLayout {
        spacing: 20
        anchors.fill: parent

        ToolButton {
            id: menuButton

            contentItem: Label {
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter
                text: MdiFont.Icon.menu
            }
        }

        Label {
            id: titleLabel
            text: "Sample Application"
            font.pixelSize: 20
            elide: Label.ElideRight
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter
            Layout.fillWidth: true
        }

        ToolButton {
            contentItem: Label {
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter
                text: MdiFont.Icon.dotsVertical
            }

            //            onClicked: optionsMenu.open()
            Menu {
                id: optionsMenu
                x: parent.width - width
                transformOrigin: Menu.TopRight

                MenuItem {
                    text: "Settings"
                    //                    onTriggered: settingsDialog.open()
                }
                MenuItem {
                    text: "About"
                    //                    onTriggered: aboutDialog.open()
                }
            }
        }
    }
}
