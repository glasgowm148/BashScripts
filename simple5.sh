#!/bin/bash

SECONDS=''

#Wait for seconds to reach 12s
while [ ! ${SECONDS} -eq 12 ]
do
	SECONDS=$(date +%S)
	echo ${SECONDS}
	sleep 1
done
echo "Done waiting, it's $(date)"

# Wait until a lock file exists then exit
while true
do
	if [ -e lock ]; then
		break
	fi
done

# Exiting, returning success (0)
echo "Exiting now, will return (0)"
exit 0
