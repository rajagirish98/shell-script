#!/bin/bash

ID=$(id -u)

VALIDATE(){

if [ $? -ne 0 ]
then 
echo " installation of mysql is failed"
exit 1
else 
echo "installation of mysql is success"
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

VALIDATE
