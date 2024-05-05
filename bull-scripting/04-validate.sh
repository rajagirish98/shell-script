#!/bin/bash

ID=$(id -u)

VALIDATE(){

if [ $1 -ne 0 ]

then
    echo "$2.... Failure"
else
    echo "$2.... Success $"
fi
}


if [ $ID -ne 0 ]
then
    echo "failed to install not root user"
    exit 1
else
    echo "u r a root user"
fi

yum install mysql -y
VALIDATE $? "installation of mysql"


