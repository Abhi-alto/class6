#!/bin/bash
read -p "Enter a number " x
f=1
for (( i=1; i<=$x; i++ ))
do
	f=$(( $f * $i ))
done
echo "$f is the factorial for $x"
