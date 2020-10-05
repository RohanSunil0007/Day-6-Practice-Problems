#!/bin/bash -x
read -p "Enter a number to check the factorial" num

fact=1

for (( i=1 ; i<= num ; i++ ))
do
	fact=$(( $fact * $i ))
done

echo "$fact is the factorial result of $num"
