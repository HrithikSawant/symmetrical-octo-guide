#!/bin/bash

# when user are not nice
#  bash single-flag-with-args.sh -v ''
#   -v was found!
#   -v option argument is:
# solution for this—the :)

#####################################
# Author: Hrithik Sawant
# Version: v1.2.0
# Date:
# Description: Shows the basic getopts syntax.
# Usage: ./single-flag-with-argument-problem.sh [flags]
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
    :)
      echo "-${OPTARG} requires an argument."
      exit 1
      ;;
    ?)
      echo "Invalid option: -${OPTARG}."
      exit 1
      ;;
  esac
done


