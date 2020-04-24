import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13

Window {
    visible: true
    width: 320
    height: 480
    title: qsTr("WhatsApp")

    ListModel {
        id: contactsModel
        ListElement {
            name: "Василий"
            avatar: "icons/person.png"
        }
        ListElement {
            name: "Анна"
            avatar: "icons/panda.png"
        }
        ListElement {
            name: "Максим"
            avatar: "icons/landscape.png"
        }
        ListElement {
            name: "Антон"
            avatar: "icons/person_1.png"
        }
        ListElement {
            name: "Лев"
            avatar: "icons/lion.png"
        }
        ListElement {
            name: "Bot"
            avatar: "icons/logo.png"
        }
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 0
        MainToolBar {
            Layout.fillWidth: true
            Layout.margins: 4
            onNewItem: {
                contactsModel.append({name: text});
            }
        }

        ContactList {
            Layout.fillHeight: true
            Layout.fillWidth: true
            model: contactsModel
        }
    }

}
