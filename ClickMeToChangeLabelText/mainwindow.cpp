#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "ui_myform.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    count = 0;
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_clicked()
{
    count++;

    char buf[20];
    memset(buf,0,20);
    sprintf(buf,"Button clicked %d",count);

    ui->label->setText(buf);
}
