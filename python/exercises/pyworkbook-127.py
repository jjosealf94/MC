#!/usr/bin/python
#: Description : This script use the method of The sieve of Eratosthenes.

print ("Exercise 127 The Sieve of Eratosthenes: find all of the prime numbers between 2 and some limit, say 100")

limit=100
numbers=list(range(limit))

numbers[1]=0 #Tachamos el uno por no ser primo


for n in range(2,limit,1):
	for i in range(2*n,limit,n): #Desde 2n para no tachar el primer número y en pasos de n para tachar sus múltiplos
		numbers[i]=0 

print ("The list of prime numbers is:")
for i in numbers:
	if i!=0: # Se imprimen los números no tachados (primos)
		print (i)
