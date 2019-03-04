#!/bin/bash

# $$ gives the Process ID (PID) of the process running me
echo "My PID is: $$"

# $0 returns the name of the script
echo "My name is: $0"

# $# gives tge number of arguments passed to the script
echo "I was started with $# arguments"

# $@ us a list of all the arguments passed
echo "My arguments are: $@"

# $1 returns the first argument passed to the script
echo "My first argument was: $1"

# $? returns the exit code of the previous command
# Good for finding things that failed. 0 - success, >0 - fail
echo "Running (ls)"
ls > /dev/null 2>&1
echo "Return code us $?"

echo "Running (gcc)"
gcc > /dev/null 2>&1
echo "Return code is $?"


# Exiting, returning success (0)
echo "Exiting now, will return (0)"
exit 0
