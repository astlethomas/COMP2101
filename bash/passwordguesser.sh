#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command

myString="TestString"
referenceString="password"

[ $myString = $referenceString ] && echo "You guessed the password right" || echo "You guessed the password wrong"

#Task:1 taking user input
read -p "guess a password:" myString

#Task:2 checking if the guess is correct
if [ $myString = $referenceString ]
then
	echo "You guessed the password right"
else
	echo "you guessed the wrong password"
fi

#Task:3 asking the guess three times
for try in {1..3}
do
	read -p "Try ($try): guess a password:" myString
	if [ $myString = $referenceString ]
	then
		printf "You guessed the right password!\n"
		break
	else
		echo "you guessed the wrong password"
	fi
done
