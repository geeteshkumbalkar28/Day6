#!/bin/bash -X
#Write a program that computes a factorial of a number taken as input.
#5 Factorial – 5! = 1 * 2 * 3 * 4 * 5

read -p "Enter the number to how much factorial multiplication you want : " n

Factorial_Number=1

for (( i=1; i<=$n; i++ ))
do
	Factorial_Number=$(( $Factorial_Number*$i ))
done
	echo "Factorial of $n = $Factorial_Number"
