#!/bin/bash -x
#Write a function to check if the two numbers are Palindromes

echo "Enter the number that you want to check it is palindromes no or not"
read check_Pal

function Check_Palindromes()
{

  Number=$check_Pal
  Reverse=0
  while (( $check_Pal > 0 ))
  do
     Digit=$(( $check_Pal % 10 ))
     check_Pal=$(( $check_Pal / 10 ))
     Reverse=$(( $(($Reverse * 10)) + $Digit ))
 done
  echo $Reverse

  if (( $Number == $Reverse ))
  then
        echo "Number is palindrome"
  else
        echo "Number is not palindrome"
  fi

}
Ans="$( Check_Palindromes $check_Pal )"
echo "$Ans"



