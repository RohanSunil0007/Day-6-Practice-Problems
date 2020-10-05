#!/bin/bash -x
isHeads=0
isTails=1
tails=0
heads=0
lim=11
while [ $tails -lt $lim ] && [ $heads -lt $lim ]
do
coinCheck=$((RANDOM%2))
if [ $isHeads -eq $coinCheck ]
then
	((heads++))
elif [ $isTails -eq $coinCheck ]
then
	((tails++))
fi
done
if [ $heads -gt $tails ]
then
	echo "Heads ($heads) Win, Tails ($tails) Lose"
else
	echo "Tails ($tails) Win, Heads ($heads) Lose"
fi
