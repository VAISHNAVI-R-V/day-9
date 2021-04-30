#! /bin/bash -x
IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
EMP_RATE_PER_HR=20
NO_OF_WORKING_DAYS=5
MAX_WORKING_DAYS=20
#variable
totalworkingHours=0
totalworkingDays=0

function getWorking(){
	local emoCheck=$1
	local empHrs=0
	caase $empCheck in
		 $IS_PRESENT_FULL_TIME) empHrs=8;;
                $IS_PRESENT_HALF_TIME) empHrs=4;;
		 *)
                empHrs=0;;
        esac
	echo $empHrs
}
while [ $totalworkingDays != $MAX_WORKING_DAYS ] && [ $totalworkingHours -lt $MAX_WORKING_DAYS ]
do
        employeeCheck=$((RANDOM%3))

        totalworkingHours=$(( $totalworkingHours + $empHrs ))
done
salary=$(( totalworkingHours * WAGES_PER_HR ))
