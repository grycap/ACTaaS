#!/bin/bash
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise9.sh 20000 83.3333 38.8889 80.20 58.14

if [ $? -eq 1 ]   
then
  exit 1
fi

exit 0
