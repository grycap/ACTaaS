echo "Testing for n = 512"
sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise3.sh 512
if [ $? -eq 1 ]   
then
  exit 1
fi

echo "Testing for n = 31" # Prime number
sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise3.sh 512
if [ $? -eq 1 ]   
then
  exit 1
fi

exit 0