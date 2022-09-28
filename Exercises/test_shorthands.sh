#!/bin/bash

#####################################
# Author: Hrithik Sawant
# Version: v1.0.0
# Date: 2022-08-21
# Description: Show the best of both worlds!
# Usage: ./test_shorthands.sh
#####################################

# Test if the /tmp/ directory exists using the full command:
test -d /tmp/
test_rc=$?

# Test if the /tmp/ directory exists using the simple shorthand:
[ -d /tmp/ ]
simple_rc=$?

# Test if the /tmp/ directory exists using the extended shorthand:
[[ -d /tmp/ ]]
extended_rc=$?

# Print the results.
echo "The return codes are: ${test_rc}, ${simple_rc}, ${extended_rc}."