#!/bin/bash

# Mark Glasgow : 2336003G

# Write a function (Task3.sh) which takes a directory name as a parameter and:
# a) Checks if the directory already exists 
# b) Create it if it does not exist
# c) Moves into the directory

# Notes
# Alternatively, an alias can be used. 
# Better method : Alias?
# Posix-compatible : define a shell procedure rather than a shell-invoked command script.

make_folder()
    {
        if [ ! -d "${1}" ]
        then
        echo "Directories have been made";
        mkdir -p "${1}" && cd "${1}" || exit;
        exec bash # creates a child bash subshell 
        else
        echo "Folder already exists"
        fi
    }

    make_folder "${1}"

    exit



    

