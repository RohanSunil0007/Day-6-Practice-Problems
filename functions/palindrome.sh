#!/bin/bash -x
#read -p "Enter number 1 to check if its palindrome or not " num
#read -p "Enter number 2 to check if its palindrome or not " num1

read -p "Enter a number: " num
temp=$num
rev=0
while [ $num -gt 0 ]
do
rem=`expr $num % 10`
rev=`expr $rev \* 10 + $rem`
num=`expr $num / 10`
done
if [ $rev -eq $temp ]
then
echo "$n is a palindrome"
else
echo "$n is not a palindrome"
fi
