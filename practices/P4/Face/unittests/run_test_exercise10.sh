cp /var/tmp/education/ACTaaS/practices/P4/Face/solutions/marks.txt .
sh /var/tmp/education/ACTaaS/practices/P3/Face/unittests/test_exercise10.sh

if [ $? -eq 1 ]   
then
  exit 1
else
  exit 0
fi

