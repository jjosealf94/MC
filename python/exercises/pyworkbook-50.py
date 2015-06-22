#!/usr/bin/python
#: Description : This script gives the solution to the exercise 50 of the python woorkbook

import numpy as np
import matplotlib.pyplot as plt
from math import sqrt

print ("Exercise 50: Roots of cuadratic function\n")
print ("Program that computes the real roots of a quadratic function\n")
print ("Enter the coeficient of the quadratic equation:")
a=float(input("a="))
b=float(input("b="))
c=float(input("c="))
discriminant= b**2 - 4*a*c
if discriminant > 0:
    print ("The real roots are:")
    print ("root=",( -1*b + sqrt(discriminant) )/2*a)
    print ("root=",( -1*b - sqrt(discriminant) )/2*a)
elif discriminant==0:
    print ("The double real root is:")
    print ("root=",(-1*b/2*a))
else:
    print ("no real roots")

x=np.linspace(-5,5,100)
y= a*(x**2)+ b*(x) + c
plt.plot(x,y)
plt.show()
    
