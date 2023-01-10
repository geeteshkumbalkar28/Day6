#!/bin/bash -x

n=100
bet=1
win=0
loss=0
total=0
while (( ($n>=100) && ($n<200)  ))
do
	luck=$((RANDOM%2))
	if (( $luck==1 ))
	then
		n=$(($n+100))
		win=$((win+1))
	else

		n=$(($n-1))
		loss=$((loss+1))

	fi
	total=$((total+1))
done

	echo " $win times won "
	echo " $total numbers of bets made"
