import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("learn the clock")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {
            title: "build with designer"
        }

        QmlSandbox {
            title: "just a label"
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        Repeater {
            model: swipeView.contentChildren
            TabButton {
                text: modelData.title
            }
        }
    }
}
