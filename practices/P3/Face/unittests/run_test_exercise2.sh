echo "Testing a <> 0 and b <> 0 case..."
sh /var/tmp/education/ACTaaS/practices/P3/Face/unittests/test_exercise2.sh 8 2.5
if [ $? -eq 1 ]   
then
  exit 1
fi
echo "Testing The solution is not feasible case..."
sh /var/tmp/education/ACTaaS/practices/P3/Face/unittests/test_exercise2.sh 0 2.5
if [ $? -eq 1 ]   
then
  exit 1
fi
echo "Testing The solution is indeterminate case..."
sh /var/tmp/education/ACTaaS/practices/P3/Face/unittests/test_exercise2.sh 0 0
if [ $? -eq 1 ]   
then
  exit 1
fi

exit 0
