#!/bin/bash 
#: Description : This script take the initial and final character and the name of the file and print the piece

ini=$1
fin=$2
name=$3
cut -b $ini-$fin $name
