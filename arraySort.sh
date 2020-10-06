#!/bin/bash -x

n=10
ulim=999
llim=100
for (( x=0 ; x<$n ; x++ ))
do
mod=$(($ulim-$llim+1))
randomNumber[x]=$(($llim+RANDOM%$mod))
done
echo ${randomNumber[@]}

length=${#randomNumber[@]}

for (( i=0 ; i < ${length}  ; i++ ))
do
	for (( j=$((i+1)) ; j < ${length} ; j++ ))
	do
	if [ ${randomNumber[i]} -gt ${randomNumber[j]} ]
	then
		temp= ${randomNumber[i]}
		randomNumber[i]= ${randomNumber[j]}
		 randomNumber[j]=$temp
	fi
	done
done
echo "Largest Number = ${randomNumber[length-1]}"
echo "Second Largest Number = ${randomNumber[length-2]}"

echo "Smallest Number = ${randomNumber[0]}"
echo "Second Smallest Number = ${randomNumber[1]}"

