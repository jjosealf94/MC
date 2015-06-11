#!/bin/bash
#: Description : This script take 3 parameters(two letters and a file) and flip the two letters

ftl=$1
sdl=$2
filename=$3
sed -E 's/'$ftl'/1/g' $filename |sed -E 's/'$sdl'/2/g' | sed -E 's/1/'$sdl'/g'|sed -E 's/2/'$ftl'/g' 

