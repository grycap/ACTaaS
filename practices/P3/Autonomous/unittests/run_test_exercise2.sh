#!/bin/bash
cp ./exercise4/*.txt .
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise2.sh 1304.7 1900.5 800.65

if [ $? -eq 1 ]   
then
  exit 1
fi

exit 0