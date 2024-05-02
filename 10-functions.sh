#!/bin/bash

ID=$(id -u)

VALIDATE(){
     if [ $? -ne 0 ]
    then
        echo "ERROR:: installing MYSQL is fail"
        exit 1
    else
        echo "installing MYSQL is success"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root user"
    exit 1 # you can give other than 0
else
    echo "you are root user"
fi # fi means reverse of if, indicating condition and 

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE