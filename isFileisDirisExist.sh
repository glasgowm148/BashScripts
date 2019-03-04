#!/bin/bash

# Mark Glasgow : 2336003G

# Task 4
# Write a function (Task4.sh) which, for every file name passed as a parameter, 
# prints if it is a file, directory or does not exist. 


file_printer()
{
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
}

	file_printer "$@"

	exit