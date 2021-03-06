import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.12

RowLayout {
    signal newItem(string text)
    TextField {
        id: textField
        selectByMouse: true
        Layout.fillWidth: true
        focus: true
    }

    function add()
    {
        newItem(textField.text);
        textField.clear();
    }

    Button {
        text: "Добавить"
        highlighted: true
        onClicked: {
            add();
        }
    }

    Keys.onReturnPressed: {
        add();
    }

    Keys.onEnterPressed: {
        add();
    }
}

