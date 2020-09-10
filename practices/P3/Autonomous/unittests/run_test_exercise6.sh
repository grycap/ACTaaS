#!/bin/bash
echo "Testing correct data case..."
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise6.sh 3.7
echo "Testing out of range data case..."
sh /var/tmp/education/ACTaaS/practices/P3/Autonomous/unittests/test_exercise6.sh -12

