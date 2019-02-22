#!/bin/bash
#
# This script implements a guessing game
# it will pick a secret number from 1 to 10
# it will then repeatedly ask the user to guess the number
#    until the user gets it right

# Give the user instructions for the game
cat <<EOF
Let's play a game.
I will pick a secret number from 1 to 10 and you have to guess it.
If you get it right, you get a virtual prize.
Here we go!

EOF

# Pick the secret number and set their default guess to be a wrong answer
secretnumber=$(($RANDOM % 10 +1)) # save our secret number to compare later
userguess=0

# This loop repeatedly asks the user to guess and tells them if they got the right answer
# TASK 1: Test the user input to make sure it is not blank
# TASK 2: Test the user input to make sure it is a number from 1 to 10 inclusive
# TASK 3: Give them better feedback, telling them if their guess is too low, or too high

#while [ $userguess != $secretnumber ]; do # loop around until they get it right
#read -p "Give me a number from 1 to 10: " userguess # ask for a guess
#if [ $userguess -eq $secretnumber ]; then
#  echo "You got it! Have a milkdud."
#    exit
#  fi
#do
for (( i = 1 ; i <= 4; i++))
do # loop around until they get it right
	read -p "enter a number from 1 to 10: " userguess # ask for a guess
	while [ -z "$userguess" ]; do
		echo "invalid input! Cannot Be Empty."
		read -p "enter a number from 1 to 10: " userguess # ask for a guess
	done
	if [ $userguess -le 10 ] && [ $userguess -ge 1 ]
	then
		if [ "$userguess" -gt "$secretnumber" ]
		then
			echo "your Guessing is Too High"
		elif [ "$userguess" -lt "$secretnumber" ]
		then
			echo "your guessing is Too Low"
		else
			echo "congragulation you guessed it right."
			exit
		fi
		if [ $i -eq 4 ]
		then
			echo "sorry your four chances are over"
			exit
		else
			echo "You have "$((4-"$i"))" more guesses left "
		fi
	else
	        echo "invalid input enter number from 1 to 10"
	fi
done
