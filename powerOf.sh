#!/bin/bash

read -p "Enter a range value" range

powerOf=0

for (( num=0 ; num <= range ; num++ ))
do
	powerOf=$((2**$num))
	echo "2^$num = " $powerOf
done

