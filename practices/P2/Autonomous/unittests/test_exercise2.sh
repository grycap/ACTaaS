#!/bin/bash
./exercise2_bin
if cmp -s summary.txt /var/tmp/education/ACTaaS/practices/P2/Autonomous/unittests/sol_ex2.txt; then
    echo "Test OK!!"
    rm *.txt
    exit 0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   cat /var/tmp/education/ACTaaS/practices/P2/Autonomous/unittests/sol_ex2.txt
   echo "STUDENT OUPUT:"
   cat summary.txt
   rm *.txt
   exit 1
fi
