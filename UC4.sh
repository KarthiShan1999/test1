#!/bin/bash
#Solving using Switch Case Statement

wage_per_hour=20

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

echo "Daily Employee Wage: $daily_wage"
