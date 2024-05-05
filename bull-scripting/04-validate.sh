#!/bin/bash

ID=$(id -u)

VALIDATE(){

if [ $1 -ne 0 ]
then 
echo " $2.....is failed"
exit 1
else 
echo "$2.......... is success"
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

yum install git -y

VALIDATE $? "installation of git"