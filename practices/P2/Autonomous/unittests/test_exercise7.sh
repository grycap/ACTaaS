#!/bin/bash
if [  -f ex7_alu.txt ]; then
   rm ex7_alu.txt
fi
./exercise7_bin
if [ ! -f ex7_sol.txt ]; then
   echo "Test ERROR -- File ex7_alu.txt not found."
   exit 1
fi

if cmp -s /var/tmp/education/ACTaaS/practices/P2/Autonomous/unittests/ex7_sol.txt ex7_alu.txt; then
    echo "Test OK!!"
    rm ex7_alu.txt
    exit 0
else
   echo "Test ERROR -- EXPECTED OUTPUT:"
   cat /var/tmp/education/ACTaaS/practices/P2/Autonomous/unittests/ex7_sol.txt
   echo "STUDENT OUTPUT:"
   cat ex7_alu.txt
   rm ex7_alu.txt
   exit 1
fi

