#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "bledevice.h"
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    BLEDevice bledevice;
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("bledevice", &bledevice);
    const QUrl url(u"qrc:/BLE_UART/Main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
        &app, []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);
    return app.exec();
}
