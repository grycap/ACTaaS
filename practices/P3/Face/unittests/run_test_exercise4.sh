#!/bin/bash
cp ./exercise4/*.txt .
echo "Testing age < 18 and credits > 30 case..."
sh /var/tmp/education/ACTaaS/practices/P3/Face/unittests/test_exercise4.sh ficha.txt "J. Damian Segrelles Quilis" 48285791M 14 59

if [ $? -eq 1 ]   
then
  exit 1
fi
echo "Testing age > 18 and credits < 30 case..."
sh /var/tmp/education/ACTaaS/practices/P3/Face/unittests/test_exercise4.sh ficha.txt "J. Damian Segrelles Quilis" 48285791M 21 14

if [ $? -eq 1 ]   
then
  exit 1
fi
echo "Testing age > 18 and credits > 30 case..."
sh /var/tmp/education/ACTaaS/practices/P3/Face/unittests/test_exercise4.sh ficha.txt "J. Damian Segrelles Quilis" 48285791M 80 34

if [ $? -eq 1 ]   
then
  exit 1
fi

exit 0