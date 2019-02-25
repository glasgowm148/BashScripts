#!/bin/bash

# Mark Glasgow : 2336003G 

# Task 5 : Write a script which takes the encoded data in the data directory 
# of the linux-lab04 directory and 
# decodes the first and the last line of each file, 
# printing the decoded values to the screen. 


# decodes the lines
decode_line()
{
    head=$(head -n1 $@ ) 
    tail=$(tail -n1 $@ | head -1) 

    printf "%s" "$head" | base64 -D
    printf "%s" "$tail" | base64 -D
}

# Ensures the argument is a file, exit status 2 otherwise. 
file_check()
{
	for var in "$@"
	do
		if [ -d "$var" ]
		then 
			echo "$var" is a directory
            exit 2
		else 
			if [ -e "$var" ]
			then 
				echo "$var" is a file, attempting to decode...
                continue
			else
				echo "$var" does not exist
                exit 2
			fi
		fi
	done
}

# Check number of arguments using $#
if [ "$#" -eq 0 ]
    then
    echo "No arguments supplied"
    exit 1 
fi

# Iterate through the arguments and pass to functions
for var in "$@"
do
    file_check "$@"
    decode_line "$@"
done 
exit