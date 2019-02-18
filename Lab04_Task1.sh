#!/bin/bash

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
       