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
            line2: "asdasdasd"
        }
        ListElement {
            name: "Анна"
            avatar: "icons/panda.png"
            line2: "Фото"
        }
        ListElement {
            name: "Максим"
            avatar: "icons/landscape.png"
            line2: "Печатает сообщение..."
        }
        ListElement {
            name: "Антон"
            avatar: "icons/person_1.png"
            line2: "asdasdasd"
        }
        ListElement {
            name: "Лев"
            avatar: "icons/lion.png"
            line2: "asdasdasd"
        }
        ListElement {
            name: "Bot"
            avatar: "icons/logo.png"
            line2: "asdasdasd"
        }
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 0
        SecondToolBar {
            Layout.fillWidth: true
        }
        MainToolBar {
            Layout.fillWidth: true
            Layout.margins: 4
            onNewItem: {
                contactsModel.append({name: text});
            }
        }

        ContactList {
            id: list
            Layout.fillHeight: true
            Layout.fillWidth: true
            model: contactsModel
            onMenu: {
                contactListMenu.popup();
            }
        }
    }

    Menu {
        id: contactListMenu
        modal: true
        MenuItem {
            text: "Удалить чат"
            onTriggered: {
                contactsModel.remove(list.menuIndex);
            }
        }
        MenuItem {
            text: "Закрепить чат"
        }
        MenuItem {
            text: "В архив"
        }
        MenuItem {
            text: "Без звука"
        }
        MenuItem {
            text: "Пометить как не прочитанное"
        }

    }
}
