#!/bin/bash
read -p" Enter the limit of Harmonic function " x
hn=1
for (( i=1; i<=$x; i++))
do
	if [ $i -eq $x ]
	then
		echo  "1/$i"
	else
		echo -n "1/$i + "
	fi
	hn=$(( $hn + 1 / $i ))
done
echo $hn

