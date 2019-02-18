#!/bin/bash

# Mark Glasgow :: 2336003G

# Task 6 ::  Write a script (Task6.sh) which checks for a .bak (backup) file for every .data file in the current directory
# (i.e. for every xxx.data file there should also be a xxx.data.bak file).
# Your script should report if there is a missing .bak and create one. Run your script in the data directory to check it works.

# Iterate through all *.data files in the current working directory.
# This will pass a value even if there are no .data files so we need to check ourselves with the check on ln16
# Unsure if there's a better method ? 

for file in *.data
do

	# ensure the file exists
    if [[ ! -f "$file" ]]
    then
        echo "No .data files"
    else
		# Check if the file has a .bak 
        if [[ ! -f "$file".bak ]]
        then
            echo "No Backup Present for "$file""
            cp $file "$file".bak
            echo Backup created
        else 
            echo "Backup for $file found"
        fi 
        
    fi
done

