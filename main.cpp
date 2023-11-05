#include <QCoreApplication>

#include <asio.hpp>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    qDebug() << "Hello!";

    return a.exec();
}
