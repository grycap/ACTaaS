#!/bin/bash
cp ./exercise9/* .
sh /var/tmp/education/ACTaaS/practices/P2/Autonomous/unittests/test_exercise9.sh "Maria Gonzalez Herrero" 2020 1990

if [ $? -eq 1 ]   
then
  exit 1
else
  exit 0 
fi
