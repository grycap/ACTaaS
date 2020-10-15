#!/bin/bash

sh /var/tmp/education/ACTaaS/practices/P1/Face/unittests/test_exercise5.sh 0
if [ $? -eq 1 ]
then
   exit 1
fi


sh /var/tmp/education/ACTaaS/practices/P1/Face/unittests/test_exercise5.sh 300
if [ $? -eq 1 ]
then
   exit 1
fi

sh /var/tmp/education/ACTaaS/practices/P1/Face/unittests/test_exercise5.sh 60
if [ $? -eq 1 ]
then
   exit 1
fi

sh /var/tmp/education/ACTaaS/practices/P1/Face/unittests/test_exercise5.sh 15
if [ $? -eq 1 ]
then
  exit 1
fi

sh /var/tmp/education/ACTaaS/practices/P1/Face/unittests/test_exercise5.sh 12
if [ $? -eq 1 ]
then
  exit 1
fi

sh /var/tmp/education/ACTaaS/practices/P1/Face/unittests/test_exercise5.sh 7
if [ $? -eq 1 ]
then
  exit 1
fi

sh /var/tmp/education/ACTaaS/practices/P1/Face/unittests/test_exercise5.sh 4
if [ $? -eq 1 ]
then
  exit 1
fi
sh /var/tmp/education/ACTaaS/practices/P1/Face/unittests/test_exercise5.sh 137
if [ $? -eq 1 ]
then
  exit 1
fi

exit 0



