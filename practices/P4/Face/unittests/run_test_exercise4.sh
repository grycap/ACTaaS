sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise4.sh 5
if [ $? -eq 1 ]   
then
  exit 1
else
  exit 0
fi

sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise4.sh 0
if [ $? -eq 1 ]   
then
  exit 1
else
  exit 0
fi