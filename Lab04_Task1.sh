#!/bin/bash

# Mark Glasgow : 2336003G

# Write a script (Task1.sh) which finds individual files in the current directory with a size of 0, 
# ask for confirmation, and deletes them. 
# Hint: The -s flag will test if a file is zero size in your conditional statement.


for file in *
    do
        if [[ ! -s $file ]] && [[ ! -d $file ]]
        then
            echo "$file"
            read -p "This file is 0 bytes - should we delete it? " -n 1 -r
            echo   
            if [[ $REPLY =~ ^[Yy]$ ]]
            then
                rm $file
            fi
        fi
    done
exit
       