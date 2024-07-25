#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $1 -n 0]
    then
        echo -e "$2.... $R FAILED $N"
    else
        echo -e "$0.... $G SUCCESS $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR:: Please run this script with root user $N"
    exit 1 # you can give other than 0
else
    echo "you are root user"
fi # fi means reverse of if, indicating condition and

echo "all args passed: $@"

# package=git first time

for package in $@
do 
    yum list installed $package
    if [ $? -ne 0]
    then
        yum install $packages -y
        VALIDATE $? "installation of $package
    else
        echo -e "$package is already installed" $Y SKIPPING $N"
    fi
done
    VALIDATE $? "installation of $packages"