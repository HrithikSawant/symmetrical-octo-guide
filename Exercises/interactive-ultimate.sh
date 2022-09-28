#!/bin/bash

#####################################
# Author: Hrithik Sawant
# Version: v1.0.0
# Date: 2022-08-21
# Description: Show the best of both worlds!
# Usage: ./interactive-ultimate.sh [fictional-character-name] [actual-location] [favorite-food]
#####################################

character_name=$1
location=$2
food=$3

if test -z "${character_name}"; then read -p "Name a fictional character: " character_name; fi
if test -z "${location}"; then read -p "Enter actual-location: " location; fi
if test -z "${food}"; then read -p "Enter Favourite-food: " food; fi

echo "Recently, ${character_name} was seen in ${location} eating ${food}!"
