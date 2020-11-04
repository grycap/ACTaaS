cp /var/tmp/education/ACTaaS/practices/P4/Face/solutions/exercise11/marks.txt .
sh /var/tmp/education/ACTaaS/practices/P4/Face/unittests/test_exercise11.sh

if [ $? -eq 1 ]   
then
  exit 1
else
  exit 0
fi


