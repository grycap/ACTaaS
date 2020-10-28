#!/bin/bash
cp /var/tmp/education/ACTaaS/practices/P3/Autonomous/solutions/info.txt .
/bin/bash /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise8.sh 25

if [ $? -eq 1 ]   
then
  exit 1
fi

exit 0
