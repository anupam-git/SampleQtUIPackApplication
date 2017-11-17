import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Rectangle {
    property alias primaryColor: topSection.color
    property alias todayWeatherImage: todayWeatherImage
    property alias todayWeatherDesc: todayWeatherDesc
    property alias todayTemperature: todayTemperature
    property alias forecastImageDay1: forecastImageDay1
    property alias forecastImageDay2: forecastImageDay2
    property alias forecastImageDay3: forecastImageDay3
    property alias forecastDay1Temperature: forecastDay1Temperature
    property alias forecastDay2Temperature: forecastDay2Temperature
    property alias forecastDay3Temperature: forecastDay3Temperature
    property alias forecastDay1: forecastDay1
    property alias forecastDay2: forecastDay2
    property alias forecastDay3: forecastDay3

    id: rectangle
    Rectangle {
        id: topSection
        height: parent.height * 0.7
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0

        Rectangle {
            id: container
            width: 100
            height: 100
            color: primaryColor
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            RowLayout {
                id: temperatureContainer
                anchors.bottomMargin: 2
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: todayWeatherImage.top
                anchors.topMargin: 20

                Text {
                    id: todayTemperature
                    color: "#ffffff"
                    font.pointSize: 40
                }

                Text {
                    color: "#ffffff"
                    text: "°C"
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    font.pointSize: 24
                }
            }

            Image {
                id: todayWeatherImage
                anchors.fill: parent
                mipmap: true
                smooth: true
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: todayWeatherDesc
                color: "#ffffff"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: todayWeatherImage.bottom
                anchors.topMargin: 0
                font.pixelSize: 18
            }
        }
    }

    Rectangle {
        id: bottomSection
        color: "#fff"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: topSection.bottom
        anchors.topMargin: 0

        RowLayout {
            id: forecastContainer
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 50
            anchors.verticalCenter: parent.verticalCenter

            ColumnLayout {
                id: forecastDay1Container
                width: 80
                height: 80

                Image {
                    id: forecastImageDay1
                    sourceSize.height: 40
                    sourceSize.width: 40
                    mipmap: true
                    smooth: true
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                RowLayout {
                    id: forecastDay1TemperatureContainer
                    Label {
                        id: forecastDay1Temperature
                        color: "#666666"
                        font.pointSize: 20
                    }

                    Text {
                        color: "#666666"
                        text: "°C"
                        Layout.topMargin: 6
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        font.pointSize: 10
                    }
                }
                Label {
                    id: forecastDay1
                    color: "#999999"
                    font.pointSize: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            ColumnLayout {
                id: forecastDay2Container
                width: 80
                height: 80

                Image {
                    id: forecastImageDay2
                    sourceSize.height: 40
                    sourceSize.width: 40
                    mipmap: true
                    smooth: true
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                RowLayout {
                    id: forecastDay2TemperatureContainer
                    Label {
                        id: forecastDay2Temperature
                        color: "#666666"
                        font.pointSize: 20
                    }

                    Text {
                        color: "#666666"
                        text: "°C"
                        Layout.topMargin: 6
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        font.pointSize: 10
                    }
                }
                Label {
                    id: forecastDay2
                    color: "#999999"
                    font.pointSize: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            ColumnLayout {
                id: forecastDay3Container
                width: 80
                height: 80

                Image {
                    id: forecastImageDay3
                    sourceSize.height: 40
                    sourceSize.width: 40
                    mipmap: true
                    smooth: true
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                RowLayout {
                    id: forecastDay3TemperatureContainer
                    Label {
                        id: forecastDay3Temperature
                        color: "#666666"
                        font.pointSize: 20
                    }

                    Text {
                        color: "#666666"
                        text: "°C"
                        Layout.topMargin: 6
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        font.pointSize: 10
                    }
                }
                Label {
                    id: forecastDay3
                    color: "#999999"
                    font.pointSize: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }
}
