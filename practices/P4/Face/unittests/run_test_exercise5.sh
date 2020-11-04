sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise5.sh 1 4 5 # Sum
if [ $? -eq 1 ]
then
  exit 1
fi

sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise5.sh 2 4 5 # Sub
if [ $? -eq 1 ]
then
  exit 1
fi

sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise5.sh 3 4 5 # Mul
if [ $? -eq 1 ]
then
  exit 1
fi

sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise5.sh 4 6 2 # Div
if [ $? -eq 1 ]
then
  exit 1
fi
sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise5.sh 4 6 0 # Div by zero
if [ $? -eq 1 ]
then
  exit 1
fi
sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise5.sh 5 6 2 # Out of range option
if [ $? -eq 1 ]
then
  exit 1
fi
sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise5.sh -1 6 2 # Out of range option
if [ $? -eq 1 ]
then
  exit 1
fi

sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise5.sh 0 6 2 # exit option
if [ $? -eq 1 ]
then
  exit 1
fi

exit 0
