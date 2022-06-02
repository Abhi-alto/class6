#!/bin/bash
echo "Enter 1 for conversion from degF to degC"
echo "Enter 2 for conversion from degC to deg F"
read -p "Enter your choice " x
read -p " Enter the value " y

if [[ $x -eq 1 && $y -gt -1 && $y -lt 101 || $x -eq 2 && $y -gt 31 && $y -lt 213 ]]
	then
		case $x in
			1)
				degf=$(( $y * 9 / 5 + 32 ))
				echo "$y C = $degf F "
			;;
			2)
				n=$(( $y - 32 ))
				degc=$(( $n * 5 / 9 ))
				echo "$y F =$degc C"
			;;
			esac
else
	echo " Wrong input "
fi
