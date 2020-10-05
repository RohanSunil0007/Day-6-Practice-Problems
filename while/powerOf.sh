#!/bin/bash -x
read -p "Enter a number" num
count=0
while [ $count -le $num ]
do
	powerOf=$((2**count))
	echo "2^$count = $powerOf"
	((count++))
done
