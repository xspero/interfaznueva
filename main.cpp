#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <QQmlContext>
#include <QQmlEngine>
#include <QtQml>
#include <serialisimo.h>
//#include <QtQml/QQmlContext>
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);


    QScopedPointer<Serialisimo> serialon(new Serialisimo);



    QQmlApplicationEngine engine;


    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    Serialisimo miSerial;
    engine.rootContext()->setContextProperty("serialito",&miSerial);


    return app.exec();
}
