sh /var/tmp/education/ACTaaS/practices/P2/Face/unittests/test_exercise2.sh
cd exercise2
cp *.txt ../
cd..
if [ $? -eq 1 ]   
then
  exit 1
else
  exit 0 
fi
