#!/bin/bash
./exercise2_bin
if cmp -s summary.txt sol_ex2.txt; then
    echo "OK!!"
else
   echo "ERROR!!"
fi
