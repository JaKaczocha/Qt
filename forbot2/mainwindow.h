#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QSerialPort>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void on_pushButtonSearch_clicked();

    void on_pushButtonConnect_clicked();

    void on_pushButtonDisconnect_clicked();

    void readFromPort();

    void on_pushButtonOFF_clicked();
    void on_pushButtonON_clicked();

    void on_pushButton_clicked();

private:
    QSerialPort *device;
    void addToLogs(QString message);
    void sendMessageToDevice(QString message);
    Ui::MainWindow *ui;
};
#endif // MAINWINDOW_H
