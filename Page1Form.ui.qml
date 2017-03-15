import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    property alias textField1: textField1
    property alias button1: button1

    RowLayout {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        anchors.top: parent.top

        TextField {
            id: textField1
            placeholderText: qsTr("Text Field")
        }

        Button {
            id: button1
            text: qsTr("Press Me")
        }
    }

    SwipeView {
        id: swipeView
        x: 43
        y: 149
        width: 200
        height: 200
        currentIndex: tabBar.currentIndex

        Item {
            id: page1
        }

        Item {
            id: page2
        }

        Item {
            id: page3
        }
    }

    TabBar {
        id: tabBar
        anchors.right: swipeView.right
        anchors.left: swipeView.left
        anchors.bottom: swipeView.top
    }
}
