#!/bin/bash 
amount=100
bet=0
won=0

while [ $amount -gt 0 ] && [ $amount -lt 200 ]
do
	((bet++))
	gambleCheck=$((1+RANDOM%2))
	if [ $gambleCheck -eq 2 ]
	then
		((won++))
		((amount++))
	else
	((amount--))
	fi
done
echo "Won = " $won
echo "Bets =" $bet

if [ $amount -eq 200 ]
then
	echo "Won"
else
	echo "Lost"
fi

