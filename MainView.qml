import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

SwipeView {
    id: swipeView
    Page1 {
        title: "build with designer"
    }
    
    QmlSandbox {
        title: "just a label"
    }

    Page {
        title: "empty"
    }
}
