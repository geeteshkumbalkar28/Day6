#!/bin/bash -x

n=0
while (( $n<=11 ))
do
	val=$((RANDOM%2))
	if (( $val==1 ))
	then
		n=$(( $n+1 ))
		H=$n
	else
		n=$(( $n+1 ))
		T=$n
	fi
done
	if (( $H==11 ))
	then
	  echo "Head wins 11 times"
	else
	  echo "Tails wins 11 times"
	fi
