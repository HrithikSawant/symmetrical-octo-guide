#!/bin/bash

#####################################
# Author: Hrithik Sawant
# Version: v1.1.0
# Date: 2018-12-14
# Description: Shows the basic getopts syntax.
# Usage: ./single-flag-with-args.sh [flags]
#####################################

# Parse the flags in a while loop.
# After the last flag, getopts returns false which ends the loop.
optstring=":v:"
while getopts ${optstring} options; do
  case ${options} in
    v)
      echo "-v was found!"
      echo "-v option argument is: ${OPTARG}."
      ;;
    ?)
      echo "Invalid option: -${OPTARG}."
      exit 1
      ;;
  esac
done



################################
# bash single-flag-with-args.sh -v
#   Invalid option: -v.

# bash single-flag-with-args.sh -v hello
#   -v was found!
#   -v option argument is: hello.

# when user are not nice
#  bash single-flag-with-args.sh -v ''
#   -v was found!
#   -v option argument is:
# solution for this—the :)
