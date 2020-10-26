#!/bin/bash
cp ./exercise7/*.txt .
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise7.sh

if [ $? -eq 1 ]   
then
  exit 1
fi

exit 0
