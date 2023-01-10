#!/bin/bash -x

read -p "Enter the number: " n


echo "prime factor of $n is"
for (( i=2; $n>=$(( $i*$i )); i=$i ))
do
	if (( $(($n%$i))==0 ))
	then
		echo "$i"
		n=$(( $n/$i ))
	else
		i=$(( $i+1 ))
	fi
done
	echo "$n"
