import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import "pages"

ApplicationWindow {
    visible: true
    title: qsTr("Hello World")

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Component { FirstPage { } }
    }

    onClosing: {
        if ( stackView.depth > 1 ) {
            close.accepted = false
            stackView.pop()
        } else {
            return
        }
    }

}
