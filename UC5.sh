#!/bin/bash
#Calculating Wages for a Month - Assume 20 Working Day per Month

wage_per_hour=20
working_days_per_month=20

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

echo "Enter employee type (full_time/part_time):"
read employee_type

daily_wage=$(calc_wage $employee_type)
monthly_wage=$((daily_wage * working_days_per_month))

echo "Monthly Employee Wage: $monthly_wage"
