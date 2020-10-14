sh /var/tmp/education/ACTaaS/practices/P1/Autonomous/unittests/test_exercise1.sh -3 1 1 -2
if [ $? -eq 1 ]   
then
  exit 1
else
  exit 0 
fi
