#!/bin/bash
if [  -f ex7_sol.txt ]; then
   rm ex7_alu.txt
fi
./exercise7_bin
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

