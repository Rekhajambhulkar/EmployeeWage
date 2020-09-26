#! /bin/bash -x

echo "Welcome"

#CONSTANTS
EMP_RATE_PER_HR=100;
IS_FULL_TIME=1;
IS_PART_TIME=2;
MAX_WORKING_DAYS=20;
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

function getWorkHours()
{
case $1 in 
	1) workHrs=8;;
	2) workHrs=4;;
	*) workhrs=0;;
	esac
	echo $workHrs;
}

while [[ $totalWorkingHrs -lt $MAX_WORKING_HRS && 
	$totalWorkingDays -lt $MAX_WORKING_DAYS ]]
do

((totalWorkingDays++));
resWorkDonePerDay=$( getWorkHours $((RANDOM%3)) );

#adding up total working hours
totalWorkingHrs=$(( totalWorkingHrs + resWorkDonePerDay ));

#getting store per day work hours in Dictionary
workDonePerDay[$totalWorkingDays]=$resWorkDonePerDay;

done

echo "Total working Hours : " $totalWorkingHrs
echo "Total Work day:" ${workDonePerDay[@]}
