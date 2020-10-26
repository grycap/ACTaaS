#!/bin/bash

echo "Testing no extras case...."
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise3.sh 120000 10 n n
if [ $? -eq 1 ]   
then
  exit 1
fi
echo "Testing third floor or higher case...."
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise3.sh 120000 10 y n
if [ $? -eq 1 ]   
then
  exit 1
fi
echo "Testing flat outward-facing case...."
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise3.sh 120000 10 n y
if [ $? -eq 1 ]   
then
  exit 1
fi
echo "Testing all extras case...."
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise3.sh 120000 10 y y
if [ $? -eq 1 ]   
then
  exit 1
fi

exit 0
