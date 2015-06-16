#!/usr/bin/python
#: Description: Solucion ejercicio 10: 
import numpy as np
print "Solution of exercise 10"
print "Please enter two numer:"

#Read two number enter by the user 
a=float(raw_input("Please enter a="))
b=float(raw_input("Please enter b="))

print "The sum of the two number is:", b+a
print "The diffrence when b is subtracted from a:", a-b
print "The product between a and b is:", a*b
print "The quotient when a is divided by b is:", a/b
print "The remainder when a is divided by b is:", a%b
print "The result of log(10)a is:", np.log10(a)
print "The result of a^b is:", a**b

print "Final"  
