#!/bin/bash
if [ "$#" -ne 2 ]
then
	echo "Wrong number of parameters"
	exit 1
else
	if [ ! -f "$1" ]
	then
		echo "File does not exist"
		exit 1
	else
		t=1
		input="$1"
		while IFS= read -r line
		do
			if [ "$line" == "$2" ]
			then
				echo "Username exists in the file"
				t=0
				exit 1
			fi
		done < "$1"
		if [ "$t" == 1 ]
		then
			echo "Username does not exist in the file"
			echo "$2" >> "$1"
			echo "Username appended to the end of the file"
			exit 1
		fi
	fi
fi
