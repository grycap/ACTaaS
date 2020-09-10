#!/bin/bash

echo "Testing no extras case...."
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise3.sh n n
echo "Testing third floor or higher case...."
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise3.sh y n
echo "Testing flat outward-facing case...."
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise3.sh n y
echo "Testing all extras case...."
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise3.sh y y
