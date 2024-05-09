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

df -h

free -m

nproc