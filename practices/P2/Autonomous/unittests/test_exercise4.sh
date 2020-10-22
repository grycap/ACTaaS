#!/bin/bash
./exercise4_bin < text.dat > ex4.dat
awk 'NF' ex4.dat > ex4.bak
mv ex4.bak ex4.dat
if cmp -s text.dat /var/tmp/education/ACTaaS/practices/P2/Autonomous/unittests/ex4_sol.dat; then
    echo "Test OK!!"
    exit 0
else
    echo "Test ERROR -- text.dat is not the same as exercise 3"
    exit 1
fi

