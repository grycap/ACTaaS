#!/bin/bash
for i in 6959 7323 7764 2517 1002
do
   sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise5.sh $i
   if [ $? -eq 1 ]   
   then
      exit 1
   fi
done
exit 0   

