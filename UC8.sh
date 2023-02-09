#!/bin/bash
#Store the Daily Wage along with the Total Wage


wage_per_hour=20
total_hours=100
total_days=20
hours_worked=0
days_worked=0
declare -A daily_wage_array

function get_work_hours() {
  case $1 in
    "full_time")
      echo 8
      ;;
    "part_time")
      echo 4
      ;;
    *)
      echo 0
      ;;
  esac
}

function calc_wage() {
  echo $((wage_per_hour * $1))
}

while [[ $hours_worked -lt $total_hours && $days_worked -lt $total_days ]]
do
  echo "Enter employee type (full_time/part_time):"
  read employee_type

  work_hours=$(get_work_hours $employee_type)
  hours_worked=$((hours_worked + work_hours))

  if [[ $work_hours -eq 0 ]]; then
    echo "Invalid input"
    continue
  fi

  daily_wage=$(calc_wage $work_hours)
  daily_wage_array["Day"$days_worked]=$daily_wage
  ((days_worked++))
  monthly_wage=$((monthly_wage + daily_wage))
done

echo "Daily Wages: "
for day in "${!daily_wage_array[@]}"
do
  echo "$day: ${daily_wage_array[$day]}"
done

echo "Monthly Employee Wage: $monthly_wage"
