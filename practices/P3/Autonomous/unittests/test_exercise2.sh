#!/bin/bash

if [ $# -ne 3 ]; then
   echo "$0 <july expenses> <august expenses> <september expenses>"
   exit
fi
if [ ! -f spending.txt ]
then
   echo "Test ERROR -- File spending.txt not found"
   exit 1
fi

echo "$1" > spending.txt
echo "$2" >> spending.txt
echo "$3" >> spending.txt
./exercise2_bin
if cmp -s spending.txt /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/spending.txt 
then
    echo "Test OK!!"
	exit_code=0
else
   echo "Test ERROR!!"
   exit_code=1
   echo "EXPECTED OUTPUT:"
   cat /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/spending.txt
   echo "STUDENT OUPUT:"
   cat spending.txt
fi
rm spending.txt
exit $exit_code





