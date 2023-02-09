#!/bin/bash
#Calculate Wages tilla condition of total working hours or days is reached for a month - Assume 100 hours and 20 days

wage_per_hour=20
total_hours=100
total_days=20
hours_worked=0
days_worked=0

function calc_wage() {
  case $1 in
    "full_time")
      echo $((wage_per_hour * 8))
      ;;
    "part_time")
      echo $((wage_per_hour * 4))
      ;;
    *)
      echo "Invalid input"
      ;;
  esac
}

while [[ $hours_worked -lt $total_hours && $days_worked -lt $total_days ]]
do
  echo "Enter employee type (full_time/part_time):"
  read employee_type

  daily_wage=$(calc_wage $employee_type)

  if [[ $employee_type == "full_time" ]]; then
    hours_worked=$((hours_worked + 8))
  elif [[ $employee_type == "part_time" ]]; then
    hours_worked=$((hours_worked + 4))
  else
    echo "Invalid input"
    continue
  fi

  ((days_worked++))
  monthly_wage=$((monthly_wage + daily_wage))
done

echo "Monthly Employee Wage: $monthly_wage"
