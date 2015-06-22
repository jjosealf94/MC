#!/usr/bin/python
#: Description : This script gives the solution to the exercise 50 of the python woorkbook

import numpy as np
import matplotlib.pyplot as plt
from math import sqrt

print ("Exercise 50: Roots of cuadratic function, Program that computes the real roots of a quadratic function\n")
print ("Enter the coeficient of the quadratic equation:")

#Read the information
a=float(input("a="))
b=float(input("b="))
c=float(input("c="))
#Do the math
root=[]
discriminant= b**2 - 4*a*c
if discriminant > 0:
    root.append(( -1*b + sqrt(discriminant) )/2*a)
    root.append(( -1*b - sqrt(discriminant) )/2*a)
    print ("The real roots are:")
    print ("root=",root[0])
    print ("root=",root[1])
elif discriminant==0:
    root.append(-1*b/2*a)
    print ("The double real root is:")
    print ("root=",root[0])
else:
    print ("no real roots")

#Do the image
plt.figure()
x=np.linspace(-10,10,100)
y= a*(x**2)+ b*(x) + c
yroot=[]
plt.plot(x,y)
if len(root)!=0:
	for j in range(len(root)):	
		yroot.append(a*(root[j]**2)+ b*(root[j]) + c)
	plt.scatter(root,yroot)
plt.title('The cuadratic function with roots')
plt.grid()
plt.show()
    
