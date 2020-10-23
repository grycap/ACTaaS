#!/bin/bash
cp ./exercise4/*.txt .
sh /var/tmp/education/ACTaaS/practices/P3/Face/unittests/test_exercise4.sh ficha.txt "J. Damian Segrelles Quilis" 48285791M 23 59

if [ $? -eq 1 ]   
then
  exit 1
else
  exit 0
fi
