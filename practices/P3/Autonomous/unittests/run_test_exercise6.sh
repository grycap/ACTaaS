#!/bin/bash
echo "Testing correct data case..."
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise6.sh 15
if [ $? -eq 1 ]   
then
   exit 1
fi
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise6.sh 4.5
if [ $? -eq 1 ]   
then
   exit 1
fi
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise6.sh 3.7
if [ $? -eq 1 ]   
then
   exit 1
fi

sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise6.sh 2.3
if [ $? -eq 1 ]   
then
   exit 1
fi

sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise6.sh 1.5
if [ $? -eq 1 ]   
then
   exit 1
fi

sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise6.sh 0.6
if [ $? -eq 1 ]   
then
   exit 1
fi

echo "Testing out of range data case..."
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise6.sh -12
if [ $? -eq 1 ]   
then
   exit 1
fi

exit 0
