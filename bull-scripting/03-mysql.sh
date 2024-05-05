#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "dont proceed if not root user 0"
    exit 1 
else
    echo "proceed if root user -u"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "installing mysql failed"
    exit 1 
else
    echo "mysql installed successfully"
fi

yum install git -y

if [ $? -ne 0 ]
then
    echo "installing git failed"
    exit 1 
else
    echo "git installed successfully"
fi