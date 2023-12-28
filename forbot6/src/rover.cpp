#include "rover.h"
#include <QDebug>

Rover::Rover(QObject *parent) :
    QObject(parent),
    isConnected(false),
    controlLevel(20.0)
{}

void Rover::goLeft()
{
    qDebug() << "Left" << controlLevel;
}

void Rover::goRight()
{
    qDebug() << "Right" << controlLevel;
}

void Rover::goForward()
{
    qDebug() << "Forward" << controlLevel;
}

void Rover::goBackward()
{
    qDebug() << "Backward" << controlLevel;
}

void Rover::stop()
{
    qDebug() << "STOP";
}
