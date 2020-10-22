#!/bin/bash
cp ./exercise2/*.txt .

sh /var/tmp/education/ACTaaS/practices/P2/Autonomous/unittests/test_exercise2.sh

if [ $? -eq 1 ]   
then
  exit 1
else
  exit 0 
fi
