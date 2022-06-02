#!/bin/bash
isPT=1;
isFT=2;
tSalary=0;
empRateperhr=20;
workingDays=30;

for (( day=1; day<=$workingDays; day++ ))
do
	empCheck=$(( RANDOM % 3 ));
	case $empCheck in
		$isFT)
			empHrs=8
			;;
		$isPT)
			empHrs=4
			;;
		*)
			empHrs=0
			;;
	esac
	salary=$(( $empRateperhr * $empHrs ));
	echo "$salary"
	tSalary=$(( $tSalary + $salary ));
done
echo "$tSalary"
