import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13

Rectangle {
    width: parent.width
    height: 60
    color: "#ececec"

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 4
        anchors.rightMargin: 4

        Image {
            id: profile
            source: "icons/person_2.png"
            fillMode: Image.PreserveAspectCrop
            Layout.fillHeight: true
            Layout.preferredWidth: height
            Layout.margins: 7
        }
        RoundButton {
            anchors.right: menu.left
            anchors.margins: 7
            text: "+"
            font {
                bold: true
                pixelSize: 16
            }
        }
        RoundButton {
            id: menu
            anchors.right: parent.right
            anchors.margins: 7
            text: ". . ."
            font {
                bold: true
                pixelSize: 16
            }
        }
    }
}
