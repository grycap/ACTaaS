#!/bin/bash
echo "Test for prime number...."
sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise9.sh 541
if [ $? -eq 1 ]   
then
  exit 1
fi
echo "Test for compound number...."
sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise9.sh 54
if [ $? -eq 1 ]   
then
  exit 1
fi

exit 0

