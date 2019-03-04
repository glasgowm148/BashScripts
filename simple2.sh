#!/bin/bash

# Store the results of executing whoami
MYUSER=$(whoami)
echo "You are called ${MYUSER} on this machine."

# Another way to store the results
MYUSER2=`whoami`
echo "You are called ${MYUSER2} on this machine."

# Variables are no substituted in single quote strings
MYUSER3=$(whoami)
echo 'You are called ${MYUSER} on this machine.'

# Exiting, returning success (0)
echo "Exiting now, will return (0)"
exit 0


