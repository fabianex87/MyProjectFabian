#!/bin/bash
clear

var=$(ls | wc -l)
echo $var

read -p "How many files are there in this directory ? " input

# $input is an integer
if [ "$input" -eq "$input" ] 2>/dev/null; then
	function guess {
		until [ $input -eq $var ]
		do
				if [ $input -lt $var ]; then
					echo "it is too low"
				else
					echo "it is too high"
				fi
				read -p "try again " input

		done

		echo "CONGRATULATION!"
	}
	guess
else
		echo "you must enter an integer, bye"
fi
