#!/bin/bash
read -p "Enter a number to store prime factors" num
count=0
for (( i=2 ; i<=$num ; i++ ))
do
	while [ $(($num%$i)) == 0 ]
	do
	echo $i
	array[ $count ]=$i
	num=$(($num/$i))
	((count++))
	done
done

echo "Prime Factors stored are " ${array[@]}
