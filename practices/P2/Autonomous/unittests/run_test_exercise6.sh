#!/bin/bash
cp /var/tmp/education/ACTaaS/practices/P2/Autonomous/solutions/employee.txt .

sh /var/tmp/education/ACTaaS/practices/P2/Autonomous/unittests/test_exercise6.sh

if [ $? -eq 1 ]   
then
  exit 1
else
  exit 0 
fi