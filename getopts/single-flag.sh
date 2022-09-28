#!/bin/bash

#####################################
# Author: Hrithik
# Version: v1.0.0
# Date: 2022-08-24
# Description: Shows the basic getopts syntax.
# Usage: ./single-flag.sh [flags]
#####################################

# Parse the flags in a while loop.
# After the last flag, getopts returns false which ends the loop.
optstring=":v"
while getopts ${optstring} options; do
  case ${options} in
    v)
      echo "-v was found!"
      ;;
    ?)
      echo "Invalid option: -${OPTARG}."
      exit 1
      ;;
  esac
done


######################
#optstring  contains [:] special character  that sets getopts in silent error reporting mode.
#if removed : it will print illegal options
######################
#SYNTAX
# getopts optstring name [arg]
