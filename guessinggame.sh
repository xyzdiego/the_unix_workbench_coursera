#!/usr/bin/env bash
# File: guessinggame.sh

correct_number=$(ls | wc -l)

function guessloop {
	read response
	if [[ $response -eq $correct_number ]]
	then
		echo "Congratulations. You guess the correct number"
		echo "So we have ..."
		for c in $(ls)
		do
			echo " -$c and "
		done
		echo "and that was it"
	else
		if [[ $response -gt $correct_number ]]
		then
			echo "The guess number is too low, please try again"
			guessloop
		else
			echo "The guess number is too high, please try again"
			guessloop
		fi
	fi
}

echo "Hello and welcome to program guess in game"
echo "Can you guess the number of files?"
echo "Please enter how many files are in the current directory"
guessloop
