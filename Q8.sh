#!/bin/bash
read -p "Enter any number between 1 to 100 " x
sum=$x
while [ $sum -gt 9 ]
do
	n=$sum
	sum=0
	while [ $n -gt 0 ]
	do
		sum=$(( $sum + $n % 10 ))
		n=$(( $n / 10 ))
	done
done
if [ $sum -eq 1 ]
then
	echo "Magic number"
else
	echo "Not a magic number"
fi
