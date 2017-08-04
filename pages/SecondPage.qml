import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Page {
    id: page

    title: "Second Page"

    header: ToolBar {
        RowLayout {
            anchors.fill: parent
            ToolButton {
                text: "<"
                onClicked: stackView.pop()
            }
            Label {
                verticalAlignment: Qt.AlignVCenter
                font.pixelSize: 24
                text: title
            }
        }
    }

    ListView {
        id: listView
        anchors.fill: parent
        clip: true

        model: 20

        delegate: Text {
            width: parent.width
            height: 50
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 18
            text: index

            MouseArea {
                anchors.fill: parent
                onClicked: console.log(index)
            }
        }
    }

}
