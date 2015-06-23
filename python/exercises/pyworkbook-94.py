#!/usr/bin/python
#: Description : This script give you a random password

from random import randint

#Do the random password 
def randompass():
	passw=""
	N=randint(7,10)
	for i in range(N):
		num=randint(33,126)
		passw+=chr(num)
	return passw
#Main function that call the others
def main():
	print ("Exercise 94: Write a function that generates a random password. The password should have a random length of between 7 and 10 characters. Each character should be randomly selected from positions 33 to 126 in the ASCII table")
	print ("password =", randompass())

#The script is run directly by interpreter 
if __name__ == "__main__":
	main()
