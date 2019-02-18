#!/bin/bash

# Mark Glasgow :: 2336003G

# Task 4 ::  Write a script which generates 100 random numbers and uses redirection to store them in a file called random.

for ((j = 1; j <= 100; j++)) 
	do 
		echo $RANDOM
	done > random.txt
