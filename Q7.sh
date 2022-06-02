#!/bin/bash
read -p "Enter a number " x
p=1
n=0
count=0
while [ $p -lt 256 ]
do
	if [ $n -lt $x ]
	then
		n=`expr $n + 1`
		p=$(( $p * 2 ))
		echo "2^$n=$p"

	elif [[ $n -gt $x || $n -eq $x ]]
	then
		break
	fi
done

