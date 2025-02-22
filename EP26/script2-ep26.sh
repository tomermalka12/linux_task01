#!/usr/bin/env bash
######################################
# created by Tomer Malka Pinto
# Purpose: more scripting
# Date: 15/02/2025
# Version: 0.0.1
set -o errexit
set -o pipefail
set -o nounset
set -x
######################################

echo "ENTER a NUMBER: $1"
echo "ENTER another NUMBER: $2"

if [ $1 -gt 1 ] && [ $1 -lt 100 ] && [ $2 -gt 1 ] && [ $2 -lt 100 ]; then
  let sum1="$1 + $2"
  let sum2=" $1*$2"
  echo "SUM: $sum1"
  echo "PRODUCT: $sum2"
else
  echo "error $?"
fi
