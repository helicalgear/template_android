import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Page {
    id: page

    title: "First Page"

    header: ToolBar {
        RowLayout {
            anchors.fill: parent
            ToolButton {
                text: "⋮"
                onClicked: menu.open()
            }
            Label {
                verticalAlignment: Qt.AlignVCenter
                font.pixelSize: 24
                text: title
            }
        }
    }

    Menu {
        id: menu
        MenuItem {
            text: "Second Page"
            onClicked: stackView.push(Qt.resolvedUrl("SecondPage.qml"))
        }
    }

    Flickable {
        anchors.fill: parent
        clip: true

        Text {
            anchors.centerIn: parent
            font.pixelSize: 24
            text: "Sample for Android"
        }
    }

}
