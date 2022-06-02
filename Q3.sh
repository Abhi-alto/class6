#!/bin/bash
echo "1 and 0 neither prime nor composite"
read -p "Enter the begining  number " x
read -p "Enter the ending number " y
for (( j=$x; j<=$y; j++ ))
do
	p=$(( $j / 2 ))
	c=0
	for (( i=2; i<=$p; i++ ))
	do
		rem=$(( $j % $i ))
		if [ $rem -eq 0 ]
		then
			c=$(( $c + 1 ))
		fi
	done

	if [ $c -gt 0 ]
	then
		echo "$j is Not a Prime number"
	else
		echo "$j is a Prime Number"
	fi
done
