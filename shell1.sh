#!/bin/bash

################
# Author : Ashok
#Date : 9/05/2024
#
# This script outputs the  node health
#
#Version: v1
################

set -x  # Debug mode
set -e  # exit the script when there is an error
set -o pipefail

kjdfhskdhskvdj | echo
df -h

free -m

nproc

ps -ef | grep amazon | awk -F" " '{print $2}'