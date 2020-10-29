#!/bin/bash
cp /var/tmp/education/ACTaaS/practices/P2/Autonomous/solutions/ex7_alu.txt .

sh /var/tmp/education/ACTaaS/practices/P2/Autonomous/unittests/test_exercise8.sh

if [ $? -eq 1 ]   
then
  exit 1
else
  exit 0 
fi
