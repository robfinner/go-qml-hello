import QtQuick 2.4
import QtQuick.Window 2.2

//### New Code ###

import QtQuick.Controls 1.3

//################

Window {
    id: window1
    visible: true

    //### New Code ###

    width: 400
    height: 500

    TextArea {
        id: textArea
        readOnly: true
        anchors.bottom: textInput.top
        anchors.bottomMargin: 6
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 7
        anchors.top: parent.top
        anchors.topMargin: 7
    }

    TextField {
        id: textInput
        y: 470
        height: 23
        anchors.right: sendButton.left
        anchors.rightMargin: 6
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 7
        anchors.left: parent.left
        anchors.leftMargin: 7
    }

    Button {
        id: sendButton
        x: 328
        y: 470
        width: 64
        height: 23
        text: qsTr("Send")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 7
        anchors.right: parent.right
        anchors.rightMargin: 8

        onClicked: {
            CppClass.sendMessage(textInput.text, textArea);
            textInput.text = "";
        }
    }

    //################
}

