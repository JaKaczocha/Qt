#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QBluetoothDeviceDiscoveryAgent>
#include <QBluetoothSocket>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:


    void captureDeviceProperties(const QBluetoothDeviceInfo &device);
    void searchingFinished();

    void connectionEstablished();
    void connectionInterrupted();
    void socketReadyToRead();

    void on_pushButton_Connect_clicked();

    void on_pushButton_Disconnect_clicked();

    void on_pushButton_Search_clicked();

    void on_pushButton_ClearLogs_clicked();

    void on_pushButton_DiodeON_clicked();

    void on_pushButton_DiodeOFF_clicked();

private:
    Ui::MainWindow *ui;

    QBluetoothDeviceDiscoveryAgent *discoveryAgent;

    void addToLogs(QString message);

    QBluetoothSocket *socket;

    void sendMessageToDevice(QString message);
};

#endif // MAINWINDOW_H
