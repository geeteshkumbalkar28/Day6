#!/bin/bash -x

echo "1. Convert Celsius temperature into Fahrenheit"
echo "2 is Convert Fahrenheit temperatures into Celsius"
echo -n "Select choice (1-2) : "
read choice

function fahren() {
   echo $1
}

function degree() {
   echo $1
}

case $choice in

     1)	
	echo -n "Enter temperature (C) : "
	read tc
	if (( ($tc>=0) && ($tc<=100) ))
	then
		res="$( fahren $(awk 'BEGIN {print ((9/5) * '$tc') + 32}') )"
	        echo "$tc degree = $res Fahrenheit"
	else
		echo "please enter number between 0 to 100"
	fi
	;;
     2)	
	echo -n "Enter temperature (F) : "
	read tf
	if ((  ($tf>=32) && ($tf<=212) ))
	then
		res="$( degree $(awk 'BEGIN {print ((5/9) * ('$tf'-32))}') )"
		echo "$tf fahrenheit = $res degree"
	else
		echo "please enter number between 32 to 212 "
	fi
	;;
      *)	
	 echo "Please select 1 or 2 only"

esac
