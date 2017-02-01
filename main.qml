import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0


ApplicationWindow {
    visible: true
    width: 800
    height: 480
    title: qsTr("Hello World")

    /*TabBar {
        id: bar
        width: parent.width
        height: 100

        TabButton {
            height: 100//parent.height
            //text: qsTr("Home")
            Image {
                id: xsperologo
                x: 8
                y: 8
                source: "res/logo.png"
            }

        }


    } */

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {

        }

        Page2 {

        }
        Page3 {
            /*Label {
                text: qsTr("Tercera page")
                anchors.centerIn: parent
            }*/
        }
    }


    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Personalizar")
            /*Image {
                id: personalizaricon
                x: 40
                y: 8
                source: "res/icons (3).png"
                height: 30
                width:30
            }*/
        }
        TabButton {
            text: qsTr("Escenas")
            /*Image {
                id: escenasicon
                x: 40
                y: 8
                source: "res/icons (2).png"
                height: 30
                width:30
            }*/
        }
        TabButton {
            text: qsTr("Seguridad")
            /*Image {
                id: seguridadicon
                x: 40
                y: 8
                source: "res/icons (1).png"
                height: 30
                width:30
            }*/
        }
    }





}
