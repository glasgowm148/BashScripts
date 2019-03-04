#!/bin/bash

# Mark Glasgow :: 2336003G

# Task 3 ::  Write a script (Task3.sh) which checks and reports if the current directory is the end of a branch 
# (i.e. there are no directories inside the current directory).

# A real-world solution would probably use nullglob or failglob? Tried to stick to the basic commands
# although looping through directories was producing some bugs for me (for loop */ appears to proceed even if there are no directories)

# Iterate through each object in the working directory 
for Obj in */; 
	do
		if [[ ! -d $Obj ]] 
		then # If there's no directories
			echo  End of branch
		else # If there are child directories, report them found and print
			echo Child directories found
			echo Child directory : $Obj
		fi
	done
