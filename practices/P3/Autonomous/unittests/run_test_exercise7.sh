#!/bin/bash
cp /var/tmp/education/ACTaaS/practices/P3/Autonomous/solutions/data.txt .
echo "Testing for even product..."
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise7.sh

if [ $? -eq 1 ]   
then
  exit 1
fi
echo "5 7" > data.txt
echo "Testing for odd product..."
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise7.sh

if [ $? -eq 1 ]   
then
  exit 1
fi
exit 0