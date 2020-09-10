#!/bin/bash
./exercise7_bin > sol_ex7_alu.txt
if cmp -s sol_ex7.txt sol_ex7_alu.txt; then
    echo "OK!!"
else
   echo "ERROR!!"
fi
rm sol_ex7_alu.txt
