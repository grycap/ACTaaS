#!/bin/bash
if [ ! -f ex7_alu.txt ]; then
   echo "Test ERROR -- File ex7_alu.txt not found."
   echo "You need this file to complete this exercise."
   exit 1
fi
./exercise8_bin
if [ ! -f ex7_alu.txt ]; then
   echo "Test ERROR -- File ex7_alu.txt not found."
fi

if cmp -s /var/tmp/education/ACTaaS/practices/P2/Autonomous/unittests/ex8_sol.txt ex7_alu.txt; then
    echo "Test OK!!"
    rm ex7_alu.txt 
    exit 0
else
   echo "Test ERROR -- EXPECTED OUTPUT:"
   cat /var/tmp/education/ACTaaS/practices/P2/Autonomous/unittests/ex8_sol.txt
   echo "STUDENT OUTPUT:"
   cat ex7_alu.txt
   rm ex7_alu.txt
   exit 1
fi

