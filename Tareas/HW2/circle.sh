#!/bin/bash
#: Description : This script print a circle with a given radius 

gnuplot <<EOF
set term dumb
r=$1 
unset key
set ytics
set xtics
set xrange [-1:1]
set yrange [-1:1]
set border 
set size ratio 0.5
set parametric
set trange [0:2*pi]
plot r*cos(t),r*sin(t) 

EOF
