#! /bin/bash -x

echo "Welcome"

#CONSTANTS
IS_FULL_TIME=2
IS_PART_TIME=1
MAX_WORKING_DAYS=20;
EMP_RATE_PER_HR=20

isPresent=1
randomCheck=$((RANDOM%2))

if [ $randomCheck -eq $isPresent ]
then
	echo "Employee is present"
else
	echo "Employee is Abscent"
fi

case $randomcheck in
	1) $IS_FULL_TIME
		workHrs=8
		;;
	2) $IS_PART_TIME
		workHrs=4
		;;
	*)
		workHrs=0
		;;
esac
