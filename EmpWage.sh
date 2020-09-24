#! /bin/bash -x

echo "Welcome"

#CONSTANTS
IS_FULL_TIME=2
EMP_RATE_PER_HR=20

isPresent=1
randomCheck=$((RANDOM%2))

if [ $randomCheck -eq $isPresent ]
then
	echo "Employee is present"
else
	echo "Employee is Abscent"
fi
