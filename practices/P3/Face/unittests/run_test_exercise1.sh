echo Testing absolute value -25 .....
sh /var/tmp/education/ACTaaS/practices/P3/Face/unittests/test_exercise1.sh -25

if [ $? -eq 1 ]   
then
  exit 1
fi

echo Testing absolute value 123 .....
sh /var/tmp/education/ACTaaS/practices/P3/Face/unittests/test_exercise1.sh 123

if [ $? -eq 1 ]   
then
  exit 1
fi

echo Testing absolute value of number 0
sh /var/tmp/education/ACTaaS/practices/P3/Face/unittests/test_exercise1.sh 0

if [ $? -eq 1 ]   
then
  exit 1
fi

exit 0