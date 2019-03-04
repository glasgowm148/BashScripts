#!/bin/bash

# Mark Glasgow : 2336003G

# Write a script (Task2.sh) which prints the word count, using the wc command, of each line in help-read.txt.


# was using cat $file_path | while (read -r line) originally - however that misses the last line. 
# Solved using IFS && 'cmd < file'

file=help-read.txt

while IFS= read -r line
    do 
        printf '%s\n' "$line" | wc -w 
    done < "$file"

exit

# without wc - awk '{ print NF }' "help-read.txt"

