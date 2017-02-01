#ifndef SERIALISIMO_H
#define SERIALISIMO_H

#include <QObject>
#include <QDebug>
#include <QtSerialPort/QSerialPort>
#include <QColorDialog>

class Serialisimo : public QObject
{
    Q_OBJECT
    //Q_PROPERTY(qreal valor READ  valor WRITE setvalor NOTIFY valuechanged)
    //Q_PROPERTY(qreal value READ value WRITE setValue NOTIFY valueChanged)
    //Q_PROPERTY(qreal valordimmer READ valordimmer WRITE setvalor)
public:
    explicit Serialisimo(QObject *parent = 0);


    Q_INVOKABLE void test();
    Q_INVOKABLE void iniciarSerial();

    Q_INVOKABLE void apagartodo();
    Q_INVOKABLE void proyeccion();
    Q_INVOKABLE void escenaclases();

    Q_INVOKABLE void enviarfoco(int cto,int estado);
    Q_INVOKABLE void enviarcortina(int cto,int estado);
    Q_INVOKABLE void enviardimmer(int numero);
    Q_INVOKABLE void enviarRGB(QString color);

    //Q_INVOKABLE void enviarescena(QString color, int numfoco, int estadofoco, int dimmer, int ctocortina, int estadocortina);
    Q_INVOKABLE QString colorRGB[3];

    Q_INVOKABLE int foco1[3];
    Q_INVOKABLE int estadofoco1[3];  //foco 1 estado
    //Q_INVOKABLE int dimmer[3];
    Q_INVOKABLE QString coloranterior;
    Q_INVOKABLE QString obtenercolor(QString color);
    Q_INVOKABLE QString recuperarcolor();



    //Q_INVOKABLE char escena1(QString color, int numfoco, int estadofoco, int dimmer, int ctocortina, int estadocortina);
    Q_INVOKABLE void guardar(int escena, QString color, int cto, int estado);

    //Q_INVOKABLE char guardado1(QString color);



   signals:
       qreal valueChanged(int valor);

};



#endif // SERIALISIMO_H
