#!/bin/bash

# Get the user running this script
MYID=$(whoami)

# Create an empty file
touch temp_file

# Test to see if the file exists
if [ -e temp_file ]; then
	echo "My temp_file exists!! see?"
	ls
fi

# If I haven't locked the directory rm the file
if [ -e lock ]; then
	echo "Sorry it appears you've locked the directory!"
	exit 1
elif [ $MYID == "root" ]; then
	echo "Please don't run this as root!"
	exit 2
else
	echo "Deleting the temp_file"
	rm temp_file
fi

echo "Dir contents:"
ls


# Exiting, returning success (0)
echo "Exiting now, will return (0)"
exit 0


