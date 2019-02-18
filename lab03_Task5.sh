#!/bin/bash

# Mark Glasgow :: 2336003G

# Task 5 ::  a script which loops through its arguments and prints if they are a file, directory or do not exist.

# for each variable in the arguments passed in
for var in "$@"
do
	if [ -d "$var" ]
	then 
		echo "$var" is a directory
	else 
		if [ -e "$var" ]
		then 
			echo "$var" is a file
		else
			echo "$var" does not exist
		fi
	fi
done