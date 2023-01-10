#!/bin/bash -x

read -p "enter number n: " n

for (( icnt=1; icnt<=$n; icnt++ ))
do
  Harmonic_value=$(awk 'BEGIN {print '$Harmonic_value'+1/'$icnt'}')
done

echo " $n^th harmonic number = $Harmonic_value"
