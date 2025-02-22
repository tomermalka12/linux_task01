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

source ./configuration.cfg

if [ "$logging" == "yes" ]; then
	exec 2>>"/tmp/log.log"
        set -x
fi	

echo "provide a filename $1"

if [ -f "$1" ] && [ -O $1 ] && [ -w $1 ]; then
 echo "The file is OK"
else
 chmod +w $1
 echo "now the file is writable"
fi 

