#!/usr/bin/python
#: Description: This script gives you the basic arithmetic operation on python 

import numpy as np
print ("Exercise 10: Create a program that reads two integers, a and b, and do the basic operation")

#Read two number enter by the user 
a=float(input("Please enter a="))
b=float(input("Please enter b="))

print ("The sum of the two number is:", b+a)
print ("The diffrence when b is subtracted from a:", a-b)
print ("The product between a and b is:", a*b)
print ("The quotient when a is divided by b is:", a/b)
print ("The remainder when a is divided by b is:", a%b)
print ("The result of log(10)a is:", np.log10(a))
print ("The result of a^b is:", a**b)  
