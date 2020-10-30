cp /var/tmp/education/ACTaaS/practices/P4/Face/solutions/ex7.dat .
sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise7.sh
if [ $? -eq 1 ]   
then
  exit 1
else
  exit 0
fi