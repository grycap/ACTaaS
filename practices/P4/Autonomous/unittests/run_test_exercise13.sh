cp /var/tmp/education/ACTaaS/practices/P4/Autonomous/solutions/rombo.txt .
sh /var/tmp/education/ACTaaS/practices/P4/Autonomous/unittests/test_exercise13.sh

if [ $? -eq 1 ]   
then
  exit 1
else
  exit 0
fi
