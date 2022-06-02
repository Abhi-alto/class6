#!/bin/bash
read -p "Enter a limit number " x
echo "2^0=1"
for (( i=1; i<=$x; i++ ))
do
	tab=2;
	for (( a=2; a<=$i; a++ ))
	do
		tab=$(( $tab * 2 ))
	done
	echo "2^$i=$tab"
done
