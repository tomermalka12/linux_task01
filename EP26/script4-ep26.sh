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

# Store the original nocasematch setting
original_setting=$(shopt -p nocasematch)

# Enable case-insensitive matching
shopt -s nocasematch

# Prompt user for input
echo "Enter a fruit name (apple, banana, orange):"
read fruit

# Case statement (case-insensitive)
case "$fruit" in
  apple)
    echo "You chose an Apple! 🍏"
    ;;
  banana)
    echo "You chose a Banana! 🍌"
    ;;
  orange)
    echo "You chose an Orange! 🍊"
    ;;
  *)
    echo "Unknown fruit: $fruit"
    ;;
esac

# Restore the original nocasematch setting
eval "$original_setting"

