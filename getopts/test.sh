#!/bin/bash

#####################################
# Author: Hrithik Sawant
# Version: v1.2.0
# Date:
# Description: Shows the basic getopts syntax.
# Usage: ./single-flag-with-argument-problem.sh [flags]
#####################################

# Parse the flags in a while loop.
# After the last flag, getopts returns false which ends the loop.
optstring=":vt:o:"
while getopts ${optstring} options; do
  case ${options} in
    v)
      echo "-v was found!"
      echo "-v option argument is: ${OPTARG}."
      ;;
    t)
      set -f # disable glob
      IFS=' ' # split on space characters
      arr=(${OPTARG}) # use the split+glob operator
      len=${#arr[@]}
#      for ((n = 0; n < 4; n++))
#      do
#          echo -en "|${arr[$n]}"
#      done
#          echo "|"


      for i in "${arr[@]}"; do
        echo -n " ${i},"
      done
      printf "\b \n"

      #script.sh -t tenant_no type start_date end_date
      # Show passed array
      ;;
    o)
       #script.sh -o hostname start_date end_date
      set -f # disable glob
      IFS=' ' # split on space characters
      arr=(${OPTARG}) # use the split+glob operator
      len=${#arr[@]}
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



