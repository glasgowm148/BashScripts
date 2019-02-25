#!/bin/bash

# Mark Glasgow : 2336003G

# Write a function (Task3.sh) which takes a directory name as a parameter and:
# a) Checks if the directory already exists 
# b) Create it if it does not exist
# c) Moves into the directory

# Must be run with the dot command (.) as .sh only effects the subshell
# Alternatively, an alias can be used. 

if [ ! -d ${1} ]
    then
    mkdir -p ${1} && cd ${1};
    else
	echo "Folder already exists"
fi


    

