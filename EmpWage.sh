#! /bin/bash -x

echo "Welcome"

#CONSTANTS
EMP_RATE_PER_HR=100;
IS_FULL_TIME=2;
IS_PART_TIME=1;
MAX_WORKING_DAYS=2;
MAX_WORKING_HRS=100

#variables
declare -i workDonePerDay
totalWorkingDays=0;
totalWorkingHrs=0;

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
