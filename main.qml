import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("learn the clock")
    header: Button {
        text: "add new page"
    }

    MainView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        Repeater {
            model: swipeView.contentChildren
            TabButton {
                text: index + " - " + modelData.title
            }
        }
    }
}
