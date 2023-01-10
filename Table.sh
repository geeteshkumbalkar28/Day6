#!/bin/bash -x
#Write a program that takes a command-line argument n and prints a table of the
#powers of 2 that are less than or equal to 2^n.


read -p "enter number: " n

for ((  i=o; i<=$n; i++ ))
do
	Table=$((2**$i))
	echo "$Table"
done
