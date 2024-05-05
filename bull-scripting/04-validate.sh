#!/bin/bash

ID=$(id -u)


if [ $ID -ne 0 ]
then
    echo "failed to install not root user"
    exit 1
else
    echo "u r a root user"
fi

yum install myysql -y