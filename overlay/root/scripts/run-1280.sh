#!/bin/bash

set -euo xtrace

SCRIPT=$1
#SCRIPT_SOLO=$2

# 1us perf sampling
bru-set-perf-period.sh 21299
bru-en-perf.sh 1


set-c012-100ns-1280.sh
./$SCRIPT 100ns

#set-c012-10us-1280.sh
#./$SCRIPT 10us

#set-c012-10us-rd1280-wr1280.sh
#./$SCRIPT 10us-wr

set-c012-100us-1280.sh
./$SCRIPT 100us

#set-c012-1ms-1280.sh
#./$SCRIPT 1ms

#disable.sh 
#./$SCRIPT_SOLO

#./$SCRIPT no-reg


bru-en-perf.sh 0
