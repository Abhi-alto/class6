#!/bin/bash
Head=1
Tail=2
he=0
ta=0
ram=$(( RANDOM % 2 ))
while [ $ram ]
do
	ram=$(( RANDOM % 2 ))
	if [ $ram -eq $Head ]
	then
		he=$(( $he + 1 ))
		echo "head"
		if [ $he -eq 11 ]
		then
			break
		fi
	else
		ta=$(( $ta + 1 ))
		echo " tail"
		if [ $ta -eq 11 ]
		then
			break
		 fi
	fi
done

