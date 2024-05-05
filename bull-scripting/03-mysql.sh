#!/bin/bash

ID= (id -u)

if ($ID -ne 0)
then
    echo "dont proceed if not root user 0"
else
    echo "proceed if root user -u"
fi

yum install mysql -y