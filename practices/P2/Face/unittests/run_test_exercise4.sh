#!/bin/bash

cp ./exercise2/*.txt . 
sh /var/tmp/education/ACTaaS/practices/P2/Face/unittests/test_exercise4.sh 33.20 30

if [ $? -eq 1 ]   
then
  exit 1
else
  exit 0 
fi