import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    width: 800
    property alias switchalarma: switchalarma
    property alias button: button
    z: -1

    GroupBox {
        id: groupBox1
        x: 446
        y: 26
        title: qsTr("Sensores")

        GridLayout {
            rows: 4
            columns: 2

            RadioButton {
                id: radioButton1
                text: qsTr("Detector de Humo")
            }

            Button {
                id: button1
                text: qsTr("Test")
            }

            RadioButton {
                id: radioButton2
                text: qsTr("Detector de Movimiento")
            }

            Button {
                id: button2
                text: qsTr("Test")
            }

            Switch {
                id: switch1
                text: qsTr("Ventana 01")
            }

            Label {
                id: label1
                text: switch1.checked ? "Abierta" : "Cerrada"
            }

            Switch {
                id: switch2
                text: qsTr("Ventana 02")
            }

            Label {
                id: label2
                text: switch2.checked ? "Abierta" : "Cerrada"
            }
        }
    }






    Text {
        id: text3
        x: 82
        y: 334
        width: 110
        height: 37
        color: "#ffffff"
        text: qsTr("Alarma")
        font.pixelSize: 30
        z: 2

        Switch {
            id: switchalarma
            x: 126
            y: -2
            text: switchalarma.checked ? "Encendida" : "Apagada"
            antialiasing: false
        }
    }

    Rectangle {
        id: rectangle1
        x: 1
        y: 0
        width: 800
        height: 483
        color: "#00557f"
        z: -2
    }

    Button {
        id: button
        x: 681
        y: 323
        text: qsTr("Salir")
        z: 1
    }

    GroupBox {
        id: grupocamara
        x: 29
        y: 22
        width: 329
        height: 267
        title: qsTr("Cámaras")

        Switch {
            id: switchcamara
            x: 198
            y: -50
            text: qsTr("Encender")
            antialiasing: false
        }

        Image {
            id: image
            x: -4
            y: 0
            width: 309
            height: 220
            source: "res/camara.png"
        }

        Rectangle {
            id: rectangle
            x: -4
            y: 0
            width: 309
            height: 220
            color: "#000000"
            visible: switchcamara.checked ? false : true
        }
    }

}
