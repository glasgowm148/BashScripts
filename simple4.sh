#!/bin/bash

# A C style for loop
for (( c=1; c<=3; c++ ))
do
	echo "I am a C style iteration ${c}!"
done

# A Bash style range for loop
for c in  {a..d}
do
	echo "I am a range style iteration ${c}!"
done

# A more useful for loop, return the type of each file in a dir.
# Instead of * we could use `ls` or $(ls)
for FILE in *
do
	file -i ${FILE}
done

#A more complicated example lets loop over the files 
# check their type and if it is a shellscript write a message
for FILE in *
do
	TYPE=$(file -i ${FILE} |awk '{print $2}')
	if [ ${TYPE} == "text/x-shellscript;" ]
	then
		echo "${FILE} is a shellscript"
	fi
done

# Exiting, returning success (0)
echo "Exiting now, will return (0)"
exit 0
