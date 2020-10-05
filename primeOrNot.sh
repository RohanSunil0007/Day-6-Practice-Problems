#!/bin/bash -x

read -p "Enter a number to check if its Prime or not" num

for (( counter=2 ; counter<= $num/2 ; counter++ ))
do
	check=$(( $num%$counter ))
	if [ $check == 0 ]
	then
		echo "$num is not a Prime Number"
		exit 0
	fi
done
	echo	"$num is a prime number"
