#!/bin/bash
#: Description : This script print a circle with a given radius r between (0-1) 

# The terminal is dumb for stdout terminal
# xtics: x axis and ytics: y axis 
# xrange and yrange between -1:1 for a rectangle center in 0 

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
