#!/bin/bash

# This is a comment. The computer ignores anything after the '#'

# Check contents, hostname and username
echo "You have the following files in this directory"
ls --color=auto

echo "You are working on: ${HOSTNAME}."
echo "You are called ${USER} on this machine."

# Sleep a little bit
echo "Sleeping for 2 seconds...."
sleep 1
echo "1"
sleep 1
echo "2"

# Exiting, returning success (0)
echo "Exiting now, will return (0)"
exit 0
