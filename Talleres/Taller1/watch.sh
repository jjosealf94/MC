#!/bin/bash
#: Description : give you the time using date

while (true)
do
    echo "The time is:" | figlet
    date |figlet
    sleep 1
    clear
done
