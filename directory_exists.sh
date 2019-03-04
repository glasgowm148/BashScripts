#!/bin/bash

# Mark Glasgow :: 2336003G

# Task 2 :: Copy your script from Question 1, Task1.sh to Task2.sh and modify Task2.sh so that 
# it checks if any of the directories already exist. 
# If they do, it should exit with an error code and message.

# if data doesn't exist 
if [ ! -d "data" ]
     then
	mkdir -p -- "data"
	echo Folder 'data' created
	cd data || exit
	mkdir -p -- "processed"
	echo 'Folder data/processed' created
	cd ..
     else
	echo "Folder already exists"
fi

# You also should have tested if the processed directory
# exists inside of data. It's possible that the data
# directory was there, but the processed directory wasn't
# inside. Similar comments about the exit codes. This task
# included marks for good exit codes; you should have had
# exit statement(s).


# if docs doesn't exist
if [ ! -d "docs" ] 
     then
	mkdir -p -- "docs"
	echo "Folder 'docs' created"
     else
	echo "Folder already exists"
fi
