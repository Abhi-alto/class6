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
		echo "Palindrome number"
	else
		echo "Not a palindrome number"
	fi
}
read -p " Enter a number " n
pal $n
