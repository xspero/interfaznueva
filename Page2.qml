import QtQuick 2.4

Page2Form {
    width: 800
    height: 480
    botclases.onClicked: {
        serialito.escenaclases();
}
    comboBox.onActivated: {
        //comboBox.currentIndex();
}
    bapagar.onClicked: {

        serialito.apagartodo();
}


    bproyeccion.onClicked: {
        serialito.proyeccion();
    }





}
