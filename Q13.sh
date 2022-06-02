#!/bin/bash
pal()
{
	x=$1
	z=$1
	r=0
	while [ $x -gt 0 ]
	do
		d=$(( $x % 10 ))
		r=$(( $r * 10 + $d ))
		x=$(( $x / 10 ))
	done
	if [ $z -eq $r ]
	then
		echo "Palindrome"
		pa=1
	else
		echo "Not a Palindrome "
	fi
}
prime()
{
	m=$1
	count=0
	for (( i=2; i<=$m/2; i++ ))
	do
		a=$(( $m % $i ))
		if [ $a -eq 0 ]
		then
			count=$(( $count + 1 ))
		fi
	done
	if [ $count -gt 0 ]
	then
		echo "Not a Prime number"
		pr=0
	else
		echo "Prime number"
		pr=1
	fi
}
read -p "Enter a number " n
pal $n
prime $n
if [[ pa -eq 1 && pr -eq 1 ]]
then
	echo " Prime and palindrome"
fi
