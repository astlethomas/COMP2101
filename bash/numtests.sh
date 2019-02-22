#!/bin/bash
# this script demonstrates doing numeric tests in bash

# TASK 1: Improve it by getting the user to give us the numbers to use in our tests
# TASK 2: Improve it by adding a test to tell the user if the numbers are even or odd
# TASK 3: Improve it by adding a test to tell the user is the second number is a multiple of the first number

firstNumber=4
secondNumber=7

[ $firstNumber -eq $secondNumber ] && echo "The two numbers are the same"
[ $firstNumber -ne $secondNumber ] && echo "The two numbers are not the same"
[ $firstNumber -lt $secondNumber ] && echo "The first number is less than the second number"
[ $firstNumber -gt $secondNumber ] && echo "The first number is greater than the second number"

[ $firstNumber -le $secondNumber ] && echo "The first number is less than or equal to the second number"
[ $firstNumber -ge $secondNumber ] && echo "The first number is greater than or equal to the second number"

#Task:1 taking input from user
read -p "Enter First Number:" a1
read -p "Enter Second Number:" a2

#Task:2
[ $((a1%2)) -eq 0 ] && echo " number ($a1) is even" || echo "Number ($a1) is odd"

[ $((a2%2)) -eq 0 ] && echo " number ($a2) is even" || echo "Number ($a2) is odd"

#Task:3
[ $((a2%a1)) -eq 0 ] && echo " Number ($a2) is multiple of  Number ($a1)" || echo " Number ($a2) is not multiple of Number ($a1)"
