#ifndef ROVER_H
#define ROVER_H

#include <QObject>
#include <QTimer>

class Rover : public QObject
{
    Q_OBJECT


public:
    explicit Rover(QObject *parent = nullptr);
    Q_PROPERTY(double controlLevel READ getControlLevel WRITE setControlLevel NOTIFY controlLevelChanged)
    Q_PROPERTY(double isConnected READ getIsConnected() NOTIFY isConnectedChanged)


public slots:
    void goLeft();
    void goRight();
    void goForward();
    void goBackward();
    void stop();

    double getControlLevel() const
    {
        return controlLevel;
    }

    void setControlLevel(double controlLevel)
    {
        this->controlLevel = controlLevel;
        emit controlLevelChanged();
    }
    bool getIsConnected() const
    {
        return isConnected;
    }

signals:
    void controlLevelChanged();
    void isConnectedChanged();
private:
    bool isConnected;
    double controlLevel;

    QTimer* timer;

    void onTimeout();


};

#endif // ROVER_H
