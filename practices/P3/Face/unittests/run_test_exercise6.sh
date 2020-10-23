echo "Testing leap year case..."
sh /var/tmp/education/ACTaaS/practices/P3/Face/unittests/test_exercise6.sh 2016
if [ $? -eq 1 ]   
then
  exit 1
fi
echo "Testing not leap year case..."
sh /var/tmp/education/ACTaaS/practices/P3/Face/unittests/test_exercise6.sh 1982
if [ $? -eq 1 ]   
then
  exit 1
fi
echo "Testing lower out of range case..."
sh /var/tmp/education/ACTaaS/practices/P3/Face/unittests/test_exercise2.sh 1492
if [ $? -eq 1 ]   
then
  exit 1
fi
echo "Testing upper out of range case..."
sh /var/tmp/education/ACTaaS/practices/P3/Face/unittests/test_exercise2.sh 2100
if [ $? -eq 1 ]   
then
  exit 1
fi

exit 0
