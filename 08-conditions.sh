#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 1000 ]
then
    echo "Given number $NUMBER is greater than 1000"
else
    echo "Given number $NUMBER is not greater than 1000"
fi 