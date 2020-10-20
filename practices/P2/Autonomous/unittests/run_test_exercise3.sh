sh /var/tmp/education/ACTaaS/practices/P2/Autonomous/unittests/test_exercise3.sh "hello world" "how are you?" "I'm fine, thannks"

if [ $? -eq 1 ]   
then
  exit 1
else
  exit 0 
fi