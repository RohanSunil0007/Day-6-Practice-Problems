#!/bin/bash -x
read -p "Enter n =" num
harmonicNumber=0
for (( counter=1 ; counter<=num ; counter++ ))
do
	div=$(awk 'BEGIN {print '1'/'$counter'}')
	harmonicNumber=$(awk 'BEGIN {print '$harmonicNumber' + '$div' }')
done
echo "Harmonic Number = $harmonicNumber"
