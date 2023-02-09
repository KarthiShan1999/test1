#!/bin/bash
#Check Employee isPresent or Absent- Use ((RANDOM)) for Attendance Check

# Generate a random number between 0 and 1
attendance=$(( RANDOM % 2 ))

# Check if the       attendance is 0 or 1
if [ $attendance -eq 0 ]; then
  echo "Employee is Absent"
else
  echo "Employee is Present"
fi
# testat