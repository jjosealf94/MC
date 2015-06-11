#!/bin/bash 
#: Description : This script take the original encrypted file and clean the file

sed -E 's/Page [0-9]+//g' encrypted.txt > clean.txt
sed ':a;N;$!ba;s/\n//g' clean.txt > bigenigna.txt
rm clean.txt
