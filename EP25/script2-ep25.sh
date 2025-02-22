#!/usr/bin/env bash
######################################
# created by Tomer Malka Pinto
# Purpose: parameters
# Date: 15/02/2025
# Version: 0.0.1
set -o errexit
set -o pipefail
set -o nounset
######################################

echo "$1"
echo "$2"

if [ -f "$1" ] && [ -f "$2" ]; then
 echo "The files are OK"
else
 echo "NO files found"
fi 

