#!/bin/bash
#Add Part timeEmployee & Wage- Assume Part time Hour is 8

wage_per_hour=20
full_day_hours=8
part_time_hours=4

full_time_wage=$((wage_per_hour * full_day_hours))
part_time_wage=$((wage_per_hour * part_time_hours))

echo "Full Time Employee Daily Wage: $full_time_wage"
echo "Part Time Employee Daily Wage: $part_time_wage"
