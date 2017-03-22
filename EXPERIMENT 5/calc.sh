#!/bin/sh
y=0
while [ "$y" -eq 0 ]
do
	echo "Please enter the first operand"
	read a
	echo "Please enter the second operand"
	read b
	x=0
	while [ "$x" -eq 0 ]
	do
		echo "Enter 1 for addition\nEnter 2 for subtraction"
		echo "Enter 3 for multiplication"
		echo "Enter 4 for division"
		echo "Enter 5 for modulus operator"
		read e
		if [ "$e" -eq 1 ]
		then
			c=$(expr "$a" + "$b")
			echo "The result of addition is $c"
		elif [ "$e" -eq 2 ] 
		then
			c=$(expr "$a" - "$b")
			echo "The result of subtraction is $c" 
		elif [ "$e" -eq 3 ]
		then
			c=$(expr "$a" \* "$b")
			echo "The result of multiplication is $c"
		elif [ "$e" -eq 4 ]
		then
			c=$(expr "$a" / "$b")
			echo "The result of division is $c"
		elif [ "$e" -eq 5 ]
		then
			c=$(expr "$a" % "$b")
			echo "The result of modulus is $c"
		else
			echo "Invalid operation selected"
		fi
		echo "Enter 0 to perform a different operation on the two variables\nEnter 1 to exit or to choose different variables"
		read x
	done
	echo "Enter 0 to choose two different variables\nEnter 1 to exit"
	read y
done

