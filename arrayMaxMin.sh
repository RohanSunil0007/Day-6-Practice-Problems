#!/bin/bash 

n=10
ulim=999
llim=100
#mod=$(($ulim-$llim+1))

for (( x=0 ; x<$n ; x++ ))
do
mod=$(($ulim-$llim+1))
randomNumber[$x]=$(($llim+RANDOM%$mod))
done
echo ${randomNumber[@]}

length=${#randomNumber[@]}
max1=0
min1=${randomNumber[i]}
max2=0
min2=0

for (( i=0; i<${length} ; i++ ))
do
	#MAX AND 2ND MAX
	if [ $max1 -lt ${randomNumber[i]} ]
	then
		max2=$max1
		max1=${randomNumber[i]}
	elif [ $max2 -lt ${randomNumber[i]} ] && [ ${randomNumber[i]} -gt $max1 ]
	then
		max2= ${randomNumber[i]}
	fi
done

for (( i=0; i<${length} ; i++ ))
do
	#MIN AND 2ND MIN
	 if [ $min1 -gt ${randomNumber[i]} ]
        then
                min2=$min1
                min1=${randomNumber[i]}
        elif [ $min2 -lt ${randomNumber[i]} ] && [ ${randomNumber[i]} -lt $min1 ]
        then
                min2= ${randomNumber[i]}
        fi
done
	echo "Array elements are ${randomNumber[@]}"
	echo "largest = " $max1
	echo "Second Maximum Number = " $max2
	echo "Min Number = " $min1
	echo "Second Minimum Number = " $min2

