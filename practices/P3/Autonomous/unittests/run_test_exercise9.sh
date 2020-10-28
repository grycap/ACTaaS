#!/bin/bash
cp /var/tmp/education/ACTaaS/practices/P3/Autonomous/solutions/train.txt .
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise9.sh

if [ $? -eq 1 ]   
then
  exit 1
fi

exit 0
