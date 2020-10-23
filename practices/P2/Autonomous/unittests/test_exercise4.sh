#!/bin/bash
./exercise4_bin < text.dat > ex4.dat
awk 'NF' ex4.dat > ex4.bak
mv ex4.bak ex4_sol.dat
if cmp -s text.dat ex4_sol.dat; then
    echo "Test OK!!"
    rm exercise4.c text.dat ex4_sol.dat ex4.dat
    exit 0
else
    echo "Test ERROR -- text.dat is not the same as exercise 3"
    rm exercise4.c text.dat ex4_sol.dat ex4.dat 
    exit 1
fi

