sh /var/tmp/education/ACTaaS/practices/P2/Face/unittests/test_exercise2.sh
cp ./exercise2/*.txt .

if [ $? -eq 1 ]   
then
  exit 1
else
  exit 0 
fi
