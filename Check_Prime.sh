#!/bin/bash -x

echo "Enter the number"
read n


function pal()
{
        echo $1
}



for(( i=2; i<$n; i++))
do

        if (( $(($n%$i))==0 ))
        then
            echo "$n is not a prime number"
	exit
	fi
done

number=$n
reverse=0
	while [ $n -gt 0 ]
  	do
		a=$(( $n % 10 ))
     		n=$(( $n / 10 ))
     		reverse="$( pal $(( $(($reverse * 10)) + $a )) )"
	done
  		echo $reverse

  		if [ $number -eq $reverse ]
  		then
        		echo "Number is prime number and also a palindrome number"
  		else
        		echo "Number is not palindrome"
  		fi
