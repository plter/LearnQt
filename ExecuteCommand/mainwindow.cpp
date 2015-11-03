#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QProcess>
#include <QMessageBox>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_btnShowDir_clicked()
{
    QString cmd;

#if defined(Q_OS_MAC)
    cmd+="open ";
#elif defined(Q_OS_LINUX)
    cmd+="nautilus ";
#elif defined(Q_OS_WIN32)
    cmd+="explorer ";
#elif
    QMessageBox::information(this,"你好","你的操作系统不被支持");
    return;
#endif

    cmd+=ui->txtInput->text();

    QProcess p;
    p.execute(cmd);
}
