#!/bin/bash
w=1
l=2
money=100
won=0
bet=0
while [ $money -lt 200 ]
do
	x=$(( RANDOM % 2 ))
	bet=$(( $bet + 1 ))
	if [ $x -eq $w ]
	then
		money=$(( $money + 1 ))
		won=$(( $won + 1 ))
	else
		money=$(( $money - 1))
	fi
	if [ $money -eq 0 ]
	then
		echo " Broke and out "
		break
	fi
done
echo "$bet bets made"
echo "$won times won"

