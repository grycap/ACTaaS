cp ./exercise2/*.txt . > /dev/null
sh /var/tmp/education/ACTaaS/practices/P2/Face/unittests/test_exercise2.sh
if [ $? -eq 1 ]   
then
  exit 1
else
  exit 0 
fi
