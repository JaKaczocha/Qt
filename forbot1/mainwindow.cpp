#include "mainwindow.h"
#include "./ui_mainwindow.h"
#include <QDebug>
MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{

    ui->setupUi(this);
    qDebug() << "custom connect works: " << connect(ui->pushButtonTest, SIGNAL(clicked()), this, SLOT(myCustomSlot()));
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_pushButtonOk_clicked()
{
    counter++;
    qDebug() << "You pressed OK button " << counter << " times.";
}

void MainWindow::myCustomSlot()
{
    qDebug() << "Custom signals and slot test - you pressed the button.";
}

