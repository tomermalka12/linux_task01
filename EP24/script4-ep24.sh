#!/bin/bash/env bash
######################################
# created by Tomer Malka Pinto
# Purpose: loop until
# Date: 15/02/2025
# Version: 0.0.1
set -o errexit
set -o pipefail 
set -o nounset
######################################

i=8;
until [ $i -lt 4 ] ;
do
 echo $i
 let i--;
done

