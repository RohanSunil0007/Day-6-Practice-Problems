#!/bin/bash -x
read -p "Enter option to convert 1.) Celsius -> Fahrenheit 2.) Fahrenheit -> Celcius : " option

function toFahrenheit(){
	a=32
	b=$(awk 'BEGIN {print '9'/'5'}' )
	prod=$(awk 'BEGIN {print '$temp'*'$b'}' )
	degF=$(awk 'BEGIN {print '$prod'+'$a'}' )
	echo "$temp Celsius to Fahrenheit" $degF
}
function toCelsius(){
	a=$(awk 'BEGIN {print '5'/'9' }' )
	b=32
	diff=$(awk 'BEGIN {print '$temp'-'$b'}')
	degC=$(awk 'BEGIN {print '$diff'*'$a'}' )
	echo "$temp Fahrenheit to Celsius" $degC
}

case $option in
				1) read -p "Enter temperature b/w 0'C & 100'C " temp
					if [ $temp -le 0 ] || [ $temp -ge 100 ]
					then
						echo "Enter valid temperature b/w 0'C & 100'C" 
					else
					resultFahrenheit="$( toFahrenheit $((temp)) )"
					fi
				;;
				2) read -p "Enter temperature b/w 32'F & 212'F" temp
					if [ $temp -le 32 ] || [ $temp -gt 212 ]
					then
						echo "Enter valid temperature b/w 32'F & 212'F"
					else
					resultCelsius="$( toCelsius $((temp)) )"
					fi
				;;
				3) echo "Invalid Selection"
				;;
esac
