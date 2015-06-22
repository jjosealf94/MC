#!/usr/bin/python
#: Description : This script give you a random password

from random import randint

def randompass():
	passw=""
	N=randint(7,10)
	for i in range(N):
		num=randint(33,126)
		passw+=chr(num)
	return passw

def main():
	print ("Exercise 94: Random Password")
	print ("password =", randompass())

if __name__ == "__main__":
	main()
