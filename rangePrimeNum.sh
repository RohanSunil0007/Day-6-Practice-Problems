#!/bin/bash 

read -p "Enter lower limit" llim
read -p "Enter upper limit" ulim

for (( i=$llim+1 ; i< $ulim ; i++ ))
do
	flag=1
		for (( j=2 ; j<= $i/2 ; j++ ))
		do
			mod=$(($i%$j))
			if [ $mod -eq 0 ]
			then
				flag=0
				break
			fi
		done
	if [ $flag -eq 1 ]
	then
		echo "$i"
	fi
done
