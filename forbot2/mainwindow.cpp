#include "mainwindow.h"
#include "./ui_mainwindow.h"
#include <QDebug>

#include <QList>
#include <QSerialPortInfo>
#include <QDateTime>


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    this->device = new QSerialPort;
}

MainWindow::~MainWindow()
{
    delete device;
    delete ui;
}


void MainWindow::on_pushButtonSearch_clicked()
{
    ui->comboBoxDevices->clear();

    this->addToLogs("Searching...");

    QList<QSerialPortInfo> devices;
    devices = QSerialPortInfo::availablePorts();
    for(int i = 0; i < devices.length(); i++)
    {
        addToLogs( devices.at(i).portName() + devices.at(i).description());
        ui->comboBoxDevices->addItem(devices.at(i).portName() + "\t" + devices.at(i).description());
    }
}

void MainWindow::addToLogs(QString message)
{
    QString currentDateTime = QDateTime::currentDateTime().toString("yyyy.MM.dd hh:mm:ss");
    ui->textEditLogs->append(currentDateTime + "\t"+ message);
}

void MainWindow::on_pushButtonConnect_clicked()
{
    if(ui->comboBoxDevices->count() == 0)
    {
        this->addToLogs("no device!");
        return;
    }

    QString portName = ui->comboBoxDevices->currentText().split("\t").first();
    this->device->setPortName(portName);

    if(!device->isOpen())
    {
    //port configuration
        if(device->open(QSerialPort::ReadWrite))
        {
            this->device->setBaudRate(QSerialPort::Baud9600);
            this->device->setDataBits(QSerialPort::Data8);
            this->device->setParity(QSerialPort::NoParity);
            this->device->setStopBits(QSerialPort::OneStop);
            this->device->setFlowControl(QSerialPort::NoFlowControl);

            this->addToLogs("serial port opened!");
            connect(this->device, SIGNAL(readyRead()), this, SLOT(readFromPort()));
        }
        else
        {
            this->addToLogs("Error opening serial port: " + device->errorString());
            this->addToLogs("opening the serial port FAILED!");
        }
    }
    else
    {
        this->addToLogs("port already open!");
        return;
    }
}


void MainWindow::on_pushButtonDisconnect_clicked()
{
    if(this->device->isOpen()) {
        this->device->close();
        this->addToLogs("Zamknięto połączenie.");
    } else {
        this->addToLogs("Port nie jest otwarty!");
        return;
    }
}

void MainWindow::readFromPort() {
    while(this->device->canReadLine()) {
        QString line = this->device->readLine();
        //qDebug() << line;

        QString terminator = "\r";
        int pos = line.lastIndexOf(terminator);
        //qDebug() << line.left(pos);

        this->addToLogs(line.left(pos));
    }
}

void MainWindow::on_pushButtonON_clicked() {
    this->sendMessageToDevice("1");
    this->addToLogs("DIODE - ON");
}

void MainWindow::on_pushButtonOFF_clicked() {
    this->sendMessageToDevice("0");
    this->addToLogs("DIODE - OFF");
}

void MainWindow::sendMessageToDevice(QString message) {
  if(this->device->isOpen() && this->device->isWritable()) {
    this->addToLogs("Wysyłam informacje do urządzenia " + message);
    this->device->write(message.toStdString().c_str());
  } else {
    this->addToLogs("Nie mogę wysłać wiadomości. Port nie jest otwarty!");
  }
}




void MainWindow::on_pushButton_clicked()
{
    ui->textEditLogs->clear();
}

