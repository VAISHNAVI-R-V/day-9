#! /bin/bash -x

#constants
IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20

for ((counter=1;counter<=$MAX_WORKING_DAYS;counter++))
do
	employeeCheck=$((RANDOM%3))
case $employeeCheck in
		$IS_PRESENT_FULL_TIME)
		empHrs=8;;
		$IS_PRESENT_HALF_TIME)
		empHrs=4;;
	*)
		empHrs=0;;
	esac

	salary=$(( $empHrs * $EMP_RATE_PER_HR ))
done
