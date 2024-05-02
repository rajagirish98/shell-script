#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root user"
else
    echo "you are root user"
fi

yum install mysql -y

if [ $? -ne 0]
then
    echo "ERROR:: installing MYSQL is fail"
else
    echo "installing MYSQL is success"
fi