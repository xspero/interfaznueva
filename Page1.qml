import QtQuick 2.7
import QtGraphicalEffects 1.0
import QtQuick.Dialogs 1.2
import QtQml 2.2

Page1Form {
    width: 800
    height: 480
    button2.onClicked: {
        //serialito.guardar(1,"feafea",2,0);
}
    button1.onClicked: {
        //serialito.guardar(2,"abcdef",1,255);
        serialito.test();
}

    colorseleccionado.onColorChanged: {

        //serialito.obtenercolor(colorseleccionado.color);

        if(colorseleccionado.color=="#000000")
        {switchapagar.checked= false;}
        else
        {switchapagar.checked= true;
            serialito.obtenercolor(colorseleccionado.color);

        }

        serialito.enviarRGB(colorseleccionado.color);

        /*
        if(switchapagar.checked)
        {switchapagar.checked= false;}
        else
        {switchapagar.checked= true;}
        */


}

    //serialito.iniciarSerial();


    botonarriba.onClicked: {
        serialito.enviarcortina(1,255);

}
    botonabajo.onClicked: {
        serialito.enviarcortina(1,0);

    }
    switchDelegate1.onClicked: {
        if(switchDelegate1.checked)
        {serialito.enviarfoco(2,255);}
        else
        {serialito.enviarfoco(2,0);}

}
    switchDelegate.onClicked: {

        if(switchDelegate.checked)
        {serialito.enviarfoco(1,255);}
        else
        {serialito.enviarfoco(1,0);}
}



    areaselectRGB.onClicked: {

        colorDialog.open();
}

    switchapagar.onClicked: {
        if(switchapagar.checked)
        {//console.log("checked");
            colorseleccionado.color = serialito.recuperarcolor();
            //serialito.enviarRGB("#000000");
        }
        else
        {//console.log("no checked");
            colorseleccionado.color = "#000000"
            serialito.enviarRGB("#000000");
        }
}






    radioButton3.onClicked: {
        serialito.iniciarSerial();

}
    progressBar.onValueChanged: {




        //serialito.enviardimmer(dial.position*100);

}
    dial.onPositionChanged: {
        porcentaje.text=((dial.position*100).toFixed(0));




        //console.log(dial.position);


}


    dial.onValueChanged: {
        serialito.enviardimmer(dial.value*100);
}

    Component.onCompleted: {
        //serialito.test();
        console.log("se inicio correctamente ");
        //serialito.iniciarSerial();
    }
}
