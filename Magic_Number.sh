#!/bin/bash -x

read -p "Enter the number: " n

while (( $n>9 ))
do
	while(( $n>0 ))
	do
	  remainder=$(($n%10))
		sum=$(($sum+$remainder))
		n=$(( $n/10 ))
	done

	n=$sum
	sum=0
done
	if(( $n==1 ))
	then
	     echo "It is a magic number"
	else
	     echo "It is not a magic number"
	fi
