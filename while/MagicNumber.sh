#!/bin/bash -x
start=1
end=100
echo "THINK OF ANY NUMBER FROM 1 TO 100 : "
flag=0
while [ $flag = 0 ]
do
	middle=$(( $(( $start+$end)) / 2))
	echo "1. My Number is : " $middle
	echo "2. Your Number is Less than the displayed ?"
	echo "3. Your Number is greater than my number ? "
	echo "CHECK YOUR NUMBER"
	read -p "Enter your choice : " choice
	case $choice in
		1) echo "YOUR NUMBER IS : $middle"
		 num=$(($middle%9))
   if [ $num -eq 1 ]
   then
      echo "This is your number"
   fi

		break
		;;
		2) end=$middle
		;;
		3) start=$middle
		;;
		*) echo "INVALID"
		;;
	esac
done

