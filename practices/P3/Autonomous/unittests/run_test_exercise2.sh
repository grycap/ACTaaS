#!/bin/bash
cp ./exercise2/*.txt .
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise2.sh 8000 15000 89500.60

if [ $? -eq 1 ]   
then
  exit 1
fi

exit 0