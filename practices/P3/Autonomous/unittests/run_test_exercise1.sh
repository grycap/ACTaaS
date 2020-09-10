#!/bin/bash
echo "Testing 2 real solutions case..."
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise1.sh 2 10 1
echo "Testing 1 real solution case..."
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise1.sh 1 -4 4
echo "Testing no real solution case..."
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise1.sh 5 4 6
