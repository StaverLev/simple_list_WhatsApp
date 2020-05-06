import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13

Rectangle {
    id: me
    property alias icon: icon.source
    property alias text: label.text
    property alias text2: label2.text
    property bool selected: false

    signal leftClick()
    signal rightClick()

    width: parent.width
    height: 60
    border.color: "#f5f5f5"

    color: {
        if (selected)
            return "#ececec";
        if (area.containsMouse)
            return "#f5f5f5";
        return "white"
    }

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 4
        anchors.rightMargin: 4
        spacing: 7

        Image {
            id: icon
            source: "icons/person_2.png"
            fillMode: Image.PreserveAspectCrop
            Layout.fillHeight: true
            Layout.preferredWidth: height
            Layout.margins: 7
        }
        ColumnLayout {
            Layout.fillWidth: true
            Label {
                id: label
                Layout.fillWidth: true
                font.bold: false
                text: "Имя контакта"
                elide: Label.ElideRight
                font.pixelSize: 18
            }
            Label {
                id: label2
                Layout.fillWidth: true
                Layout.anchors.top: label.top
                text: "Вторая строка"
                elide: Label.ElideRight
            }
        }


    }
    MouseArea {
        id: area
        anchors.fill: parent
        hoverEnabled: true
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            if (mouse.button === Qt.LeftButton)
                leftClick();
            if (mouse.button === Qt.RightButton)
                rightClick();
        }
    }
}
