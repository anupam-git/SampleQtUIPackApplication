import QtQuick 2.4
import QtMultimedia 5.9
import "icon.js" as MdiFont

VideoPlayerForm {
    video.onStopped: {
        video.play()
        video.pause()
        btnPlayText = MdiFont.icons.playArrow
    }

    seekbarMouseArea.onPressed: {
        seekbarUpdateTimer.stop()
        var value = seekbarMouseArea.mouseX / seekbarMouseArea.width

        video.seek(value * video.duration)
        seekbarUpdateTimer.start()
    }

    btnMute.onClicked: {
        if (video.volume === 0.0) {
            btnMuteText = MdiFont.icons.volumeUp
            video.volume = 1.0
        } else {
            btnMuteText = MdiFont.icons.volumeOff
            video.volume = 0.0
        }
    }

    videoMouseArea.onClicked: {
        btnPlay.clicked()
    }

    Component.onCompleted: {
        video.play()
        video.pause()
    }

    btnPlay.onClicked: {
        if (video.playbackState === MediaPlayer.PlayingState) {
            btnPlayText = MdiFont.icons.playArrow
            video.pause()
        } else {
            btnPlayText = MdiFont.icons.pause
            video.play()
        }
    }

    Timer {
        id: seekbarUpdateTimer
        interval: 30
        running: true
        repeat: true
        onTriggered: {
            seekbar.value = video.position / video.duration
        }
    }
}
