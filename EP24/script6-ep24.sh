#!/bin/bash/env bash
######################################
# created by Tomer Malka Pinto
# Purpose: number of files in a dir
# Date: 15/02/2025
# Version: 0.0.1
set -o errexit
set -o pipefail 
set -o nounset
#####################################

ls *.txt > /tmp/dump
if [ $? -eq 0 ] 
 then echo " 0 files"
else
 let i=0
 for file* in *.txt
 do
  let i++;
 done
 echo "$i"
fi
