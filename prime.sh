#!/bin/bash -x

read -p "enter the number: " n

prime=1;

echo "prime factor of $n is"

for (( i=2; $i<$n; i=$((i+1)) ))
do
	if (( $(($n%$i))==0 ))
	then
		prime=0;
    fi
done
    if (( prime==1 ))
    then 
        echo "$n is a prime number"
    else
        echo "$n is not aprime number"
    fi

