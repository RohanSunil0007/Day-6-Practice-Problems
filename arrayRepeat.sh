#!/bin/bash 

n=100
count=0
for (( i=1 ; i<$n ; i++ ))
do
	if [ $(($i%11)) -eq 0 ]
	then
	array[ $count ]=$i
	echo $i
	((count++))
	fi
done
echo "Repeating numbers in the array : " ${array[@]}
