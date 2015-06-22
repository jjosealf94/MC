#!/usr/bin/python
#: Description : This script give you a complete reference for convert degrees Celsius and degrees Fahrenheit.


print ("Exercise #63: Write a program that displays a temperature conversion table for degrees Celsius and degrees Fahrenheit.")

def convertion(x):
	dft= (x*1.80)+32
	return dft

print ("Celsius\tFahrenheit")
N=range(0,100,10)
for i in N:
	print ("%.2f\t%.2f\n"%(i,convertion(i)))

