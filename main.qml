import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.3
import "icon.js" as MdiFont

ApplicationWindow {
    id: window
    visible: true

    width: 1024
    height: 768
    maximumWidth: 1024
    maximumHeight: 768
    minimumWidth: 1024
    minimumHeight: 768

    title: qsTr("Sample Application")
    color: "#e9e9e9"

    FontLoader {
        id: mdFont
        source: "qrc:/materialiconsregular.ttf"
    }

    ToolBar {
        id: toolbar

        width: window.width
        height: 50
        Material.foreground: "white"

        RowLayout {
            spacing: 20
            anchors.fill: parent

            ToolButton {
                contentItem: Label {
                    horizontalAlignment: Image.AlignHCenter
                    verticalAlignment: Image.AlignVCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.family: mdFont.name
                    font.pixelSize: 24
                    text: MdiFont.icons.menu
                }
                onClicked: {
                    drawer.open()
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
                    anchors.verticalCenter: parent.verticalCenter

                    font.family: mdFont.name
                    font.pixelSize: 24
                    text: MdiFont.icons.moreVert
                }

                onClicked: optionsMenu.open()

                Menu {
                    id: optionsMenu
                    x: parent.width - width
                    transformOrigin: Menu.TopRight

                    MenuItem {
                        text: "About"
                        onTriggered: aboutDialog.open()
                    }
                }
            }
        }
    }

    MainComponent {
        id: mainComponent
    }

    Drawer {
        id: drawer
        width: 350
        height: window.height

        ListView {
            id: listView

            focus: true
            currentIndex: -1
            anchors.fill: parent

            delegate: ItemDelegate {
                width: parent.width
                text: model.title
                highlighted: ListView.isCurrentItem
                onClicked: {
                    listView.currentIndex = index

                    drawer.close()
                }
            }

            model: ListModel {
                ListElement {
                    title: "Item 1"
                }
                ListElement {
                    title: "Item 2"
                }
                ListElement {
                    title: "Item 3"
                }
                ListElement {
                    title: "Item 4"
                }
                ListElement {
                    title: "Item 5"
                }
                ListElement {
                    title: "Item 6"
                }
                ListElement {
                    title: "Item 7"
                }
                ListElement {
                    title: "Item 8"
                }
                ListElement {
                    title: "Item 9"
                }
                ListElement {
                    title: "Item 10"
                }
                ListElement {
                    title: "Item 11"
                }
                ListElement {
                    title: "Item 12"
                }
                ListElement {
                    title: "Item 13"
                }
                ListElement {
                    title: "Item 14"
                }
                ListElement {
                    title: "Item 15"
                }
                ListElement {
                    title: "Item 16"
                }
                ListElement {
                    title: "Item 17"
                }
                ListElement {
                    title: "Item 18"
                }
                ListElement {
                    title: "Item 19"
                }
                ListElement {
                    title: "Item 20"
                }
            }

            ScrollIndicator.vertical: ScrollIndicator {
            }
        }
    }

    Dialog {
        id: aboutDialog
        modal: true
        focus: true
        title: "About"
        x: (window.width - width) / 2
        y: window.height / 6
        width: Math.min(window.width, window.height) / 3 * 3
        contentHeight: aboutColumn.height

        Column {
            id: aboutColumn
            spacing: 20

            Label {
                width: aboutDialog.availableWidth
                text: "This Sample Application contains some UI Kits developed in QtQuick 2"
                wrapMode: Label.Wrap
                font.pixelSize: 15
            }

            Label {
                width: aboutDialog.availableWidth
                text: "<b>Developer</b> : Anupam Basak<br><b>Email</b> : anupam.basak27@gmail.com"
                wrapMode: Label.Wrap
                font.pixelSize: 15
            }
        }
    }
}
