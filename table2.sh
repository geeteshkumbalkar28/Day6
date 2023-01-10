#!/bin/bash -x

read -p " Enter number :  " n
i=0
  while (( i<=$n ))
do
        table=$((2**$i))
	((i++))
	if(( $table<=256 ))
	then
        echo "$table"
	fi
done

