#!/usr/bin/env bash
# File: forloop.sh

function guessnumber {
	read number
	while [[ $number -ne $(ls | wc -l) ]]
	do
		if [[ $number -gt $(ls | wc -l) ]]
		then
			echo "The guess number is too high, please try again"
			read number
		else
			echo "The guess number is too low, please try again"
			read number
		fi
	done
	if [[ $number -eq $(ls | wc -l) ]]
	then
		echo "Congratulations. You guess the correct number"
		echo "The files in the directory are: "
		for file in $(ls)
		do
			echo "		$file"
		done
	fi
}

echo "Hello and welcome to program guess in game"
echo "Can you guess the number of files?"
echo "Please enter how many files are in the current directory"
guessnumber
