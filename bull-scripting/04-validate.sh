#!/bin/bash

VALIDATE(){
    [ ID= -u ]
if
    echo ".... Failure $2"
else
    echo ".... Success $0"
fi
}

if [ $0 -ne 2 ]
then
    echo "failed to install not root user"
    exit 1
else
    echo "success installation"
fi

VALIDATE( $? )
yum install mysql -y