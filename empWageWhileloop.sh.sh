#! /bin/bash -x
IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
#variable
totalworkingHours=0
totalworkingDays=0
while [ $totalworkingDays != $MAX_WORKING_DAYS ]
do
	employeeCheck=$((RANDOM%3))
	(( totaleorkingDays++))
	case $employeeCheck in
		$IS_PRESENT_FULL_TIME)
		empHrs=8;;
		$IS_PRESENT_HALF_TIME)
		empHrs=4;;
	*)
		empHrs=0;;
	esac
	totalworkingHours=$(( totalworkingHours + empHrs ))
done
salary=$(( totalworkingHours * WAGES_PER_HR ))
