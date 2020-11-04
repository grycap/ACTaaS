echo "Testing for 100 integers average....."
sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise1.sh 100

if [ $? -eq 1 ]   
then
  exit 1
fi

echo "Testing for 1 integer average....."
sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise1.sh 1

if [ $? -eq 1 ]   
then
  exit 1
fi

echo "Testing for 0 integer average....."
sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise1.sh 0

if [ $? -eq 1 ]   
then
  exit 1
fi

exit 0