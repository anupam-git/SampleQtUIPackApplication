import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0
import "icon.js" as MdiFont

Item {
    id: mainComponent
    width: 1024
    height: 768
    anchors.right: parent.right
    anchors.rightMargin: 0
    anchors.left: parent.left
    anchors.leftMargin: 0
    anchors.bottom: parent.bottom
    anchors.bottomMargin: 0
    anchors.top: toolbar.bottom
    anchors.topMargin: 0

    VideoPlayer {
        id: videoPlayer
        width: 450
        height: 253
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 20
    }

    WeatherWidget {
        id: weatherWidget
        width: 300
        height: 400
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: videoPlayer.right
        anchors.leftMargin: 20
    }
}
