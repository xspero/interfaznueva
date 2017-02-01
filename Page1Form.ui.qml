import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Material 2.0
import QtQuick.Dialogs 1.2

Item {
    width: 800
    property alias mouseArea8: mouseArea8
    property alias button2: button2
    property alias mouseArea1: mouseArea1
    property alias mouseArea: mouseArea
    property alias botonarriba: botonarriba
    property alias botonabajo: botonabajo
    property alias switchDelegate1: switchDelegate1
    property alias switchDelegate: switchDelegate
    property alias switchapagar: switchapagar
    property alias areaselectRGB: areaselectRGB
    property alias botonclases: botonclases
    property alias button1: button1
    property alias colorseleccionado: colorseleccionado
    property alias radioButton3: radioButton3
    property alias progressBar: progressBar
    property alias dial: dial
    property alias porcentaje: porcentaje
    property alias poercentaje: porcentaje
    property alias icondimmer: icondimmer
    //property alias iconfoco: iconfoco
    property alias colorDialog: colorDialog
    z: -1

    GroupBox {
        id: grupofoco
        x: 220
        y: 49
        width: 222
        height: 163
        title: qsTr("Focos")

        /*Image {
            id: iconfoco
            x: 25
            y: -100
            scale: 0.25
            z: 2
            source: "res/foco.png"
        }

        Text {
            id: text1
            x: 84
            y: -50
            width: 76
            height: 37
            color: "#ffffff"
            text: qsTr("Focos")
            z: 2
            font.pixelSize: 30
        }*/

        SwitchDelegate {
            id: switchDelegate1
            x: 0
            y: 51
            text: qsTr("Foco 2")
            z: 3
        }

        SwitchDelegate {
            id: switchDelegate
            x: 0
            y: 0
            text: qsTr("Foco 1")
            z: 3
        }

        Label {
            id: label2
            x: 139
            y: 67
            text: switchDelegate1.checked ? "Encendido" : "Apagado"
        }

        Label {
            id: label1
            x: 139
            y: 16
            text: switchDelegate.checked ? "Encendido" : "Apagado"
        }

    }












    RadioButton {
        id: radioButton3
        x: 50
        y: 362
        width: 110
        height: 49
        text: qsTr("iniciar")
    }



















    Text {
        id: textoescenas
        x: 40
        y: 49
        width: 97
        height: 24
        color: "#ffaa00"
        text: qsTr("Personalizar ")
        z: 5
        font.pixelSize: 18

        RadioButton {
            id: botonclases
            x: 1
            y: 56
            width: 110
            height: 49
            text: qsTr("Clases")
        }

        RadioButton {
            id: botonproyeccion
            x: 1
            y: 105
            text: qsTr("Proyección")
        }

        RadioButton {
            id: botonapagartodo
            x: 0
            y: 151
            text: qsTr("Apagar Todo")
        }

        Text {
            id: text5
            x: 17
            y: 26
            width: 66
            height: 14
            color: "#ffaa00"
            text: qsTr("Escenas")
            renderType: Text.NativeRendering
            font.pixelSize: 18
        }

        Button {
            id: botonguardar
            x: 17
            y: 205
            text: qsTr("Guardar")
        }

        Button {
            id: botonguardar1
            x: 8
            y: 251
            text: qsTr("Establecer")
        }
    }





    Rectangle {
        id: fondo
        x: 1
        y: 0
        width: 800
        height: 483
        color: "#191919"
        z: -2

        Rectangle {
            id: rectangle4
            x: 0
            y: 434
            width: 819
            height: 49
            color: "#303030"
            z: 1
        }
    }

    Button {
        id: button1
        x: 103
        y: 440
        text: qsTr("TEST")
    }

    Button {
        id: button2
        x: 20
        y: 440
        text: qsTr("variable")
    }

    GroupBox {
        id: grupocortina
        x: 220
        y: 239
        width: 222
        height: 167
        title: qsTr("Cortina")

        Label {
            id: label4
            x: 102
            y: -35
            text: "                           "
        }

        Image {
            id: iconecram
            x: 23
            y: 180
            width: 27
            height: 22
            Text {
                id: text2
                x: 43
                y: -8
                width: 110
                height: 37
                color: "#ffffff"
                text: qsTr("Ecram")
                font.pixelSize: 30
                z: 2
            }
            source: "res/icon_cortina.png"
            z: 2
        }

        RadioButton {
            id: botonarriba
            x: 44
            y: 14
            width: 110
            height: 43
            text: qsTr("Arriba  ↑")
        }

        RadioButton {
            id: botonabajo
            x: 45
            y: 63
            width: 109
            height: 33
            text: qsTr("Abajo  ↓")
        }
    }

    GroupBox {
        id: gruporgb
        x: 484
        y: 45
        width: 222
        height: 167
        title: qsTr("Luces de Colores")
        Label {
            id: label5
            x: 145
            y: 103
            width: 54
            height: 17
            text: switchapagar.checked ? "Encendido" : "Apagado"
        }

        Image {
            id: iconRGB
            x: -73
            y: 373
            width: 27
            height: 28

            Text {
                id: text4
                x: 48
                y: -4
                width: 110
                height: 37
                color: "#ffffff"
                text: qsTr("RGB")
                font.pixelSize: 30
                z: 2
            }

            source: "res/icon_rgb.png"
            z: 3
        }

        Image {
            id: image
            x: 4
            y: 0
            width: 129
            height: 102
            source: "res/rgb select.png"

            MouseArea {
                id: mouseArea
                x: 12
                y: 13
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#ff0000"
            }

            MouseArea {
                id: mouseArea1
                x: 39
                y: 13
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#ff8000"
            }

            MouseArea {
                id: mouseArea2
                x: 66
                y: 13
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#ffff00"
            }

            MouseArea {
                id: mouseArea3
                x: 94
                y: 13
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#00ff00"
            }

            MouseArea {
                id: mouseArea4
                x: 12
                y: 42
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#03c0c6"
            }

            MouseArea {
                id: mouseArea5
                x: 39
                y: 42
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#0000ff"
            }

            MouseArea {
                id: mouseArea6
                x: 66
                y: 42
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#762ca7"
            }

            MouseArea {
                id: mouseArea7
                x: 94
                y: 42
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#ff98bf"
            }

            MouseArea {
                id: mouseArea10
                x: 66
                y: 71
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#000000"
            }

            MouseArea {
                id: mouseArea8
                x: 12
                y: 71
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#ffffff"
            }

            MouseArea {
                id: mouseArea9
                x: 39
                y: 71
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#999999"
            }

            MouseArea {
                id: mouseArea11
                x: 94
                y: 71
                width: 21
                height: 21
                onClicked: colorseleccionado.color= "#885418"
            }
        }

        SwitchDelegate {
            id: switchapagar
            x: 133
            y: 60
            width: 73
            height: 48
            topPadding: 8
            rightPadding: 7
        }

        Rectangle {
            id: rectangle
            x: 139
            y: 7
            width: 60
            height: 36
            color: "#444444"

            Rectangle {
                id: colorseleccionado
                x: 10
                y: 6
                width: 41
                height: 24
                color: "#000000"
            }

            MouseArea {
                id: areaselectRGB
                x: 0
                y: 0
                width: 60
                height: 36

                ColorDialog {
                    id: colorDialog
                    title: "Please choose a color"
                    onAccepted: colorseleccionado.color = colorDialog.color
                    //property string name: colorDialog.text


                    //Component.onCompleted: visible = true

                    //Component.onCompleted: visible = false
                }
                //onClicked: colorseleccionado.color = colorDialog.color

            }
        }
    }

    GroupBox {
        id: grupodimmer
        x: 484
        y: 239
        width: 222
        height: 167
        title: qsTr("Luces Graduables")
        Label {
            id: label6
            x: 170
            y: -35
            text: "           "
        }

        Image {
            id: icondimmer
            x: 124
            y: 181
            width: 25
            height: 25
            z: 3
            source: "res/icon_dimerc.png"

            Text {
                id: text3
                x: 33
                y: -7
                width: 110
                height: 37
                color: "#ffffff"
                text: qsTr("Dimmer")
                font.pixelSize: 30
                z: 2
            }

        }

        Text {
            id: porcentaje
            x: 94
            y: 96
            width: 55
            height: 24
            color: "#ffffff"
            horizontalAlignment: Text.AlignRight
            //            text: progressBar.value*100
            font.family: "Verdana"
            font.pixelSize: 20


        }

        Text {
            id: text7
            x: 149
            y: 96
            width: 61
            height: 24
            color: "#ffffff"
            text: "%"
            font.pixelSize: 20
        }

        Dial {
            id: dial
            x: 17
            y: 10
            //snapMode: Dial.SnapAlways

        }

        ProgressBar {
            id: progressBar
            x: 118
            y: 58
            width: 120
            height: 4
            rotation: -90
            value: dial.position
        }



    }







}
