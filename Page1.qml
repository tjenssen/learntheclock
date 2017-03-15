import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Page {
    property alias textField1: textField1
    property alias button1: button1

    width: 800
    height: 600


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
        width: 600
        height: 200
        currentIndex: tabBar.currentIndex

        Item {
            id: page1
            property string name: String(page1.id)
        }

        Item {
            id: page2
            property string name: page2.id
        }

        Item {
            id: page3
            property string name: page3.id
        }
    }

//    TabBar {
//        id: tabBar
//        anchors.right: swipeView.right
//        anchors.left: swipeView.left
//        anchors.bottom: swipeView.top
//        Repeater: {
//            model: swipeView.children.count()
//        }
//    }

    TabBar {
        id: tabBar
        anchors.right: swipeView.right
        anchors.left: swipeView.left
        anchors.bottom: swipeView.top

        Repeater {
            model: swipeView.contentChildren
            TabButton {
                text: "modelData " + modelData + " index: " + index + " typeof: " + typeof(modelData) + " name: " + modelData.name
                width: 400
            }
        }
    }
}
