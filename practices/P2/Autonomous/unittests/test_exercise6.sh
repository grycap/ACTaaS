#!/bin/bash
./exercise6_bin > sol_ex6_alu.txt
if  cmp -s /var/tmp/education/ACTaaS/practices/P2/Autonomous/unittests/sol_ex6.txt sol_ex6_alu.txt; then
    echo "Test OK!!"
    rm sol_ex6_alu.txt employee.txt exercise6.c
    exit 0
else
   echo "Test ERROR!!"
   echo "EXPECTED OUTPUT:"
   cat /var/tmp/education/ACTaaS/practices/P2/Autonomous/unittests/sol_ex6.txt
   echo "STUDENT OUTPUT:"
   cat sol_ex6_alu.txt
   rm sol_ex6_alu.txt employee.txt exercise6.c
   exit 1
fi

