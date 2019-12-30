#!/bin/bash
set -euo xtrace

SCRIPT=$1
SCRIPT_SOLO=$2

# 1us perf uampling
#bru-set-perf-period.sh 2129
#bru-en-perf.sh 1

./$SCRIPT_SOLO
./$SCRIPT no-reg
set-c012-1ms-1280.sh
./$SCRIPT 1ms
set-c012-10us-1280.sh
./$SCRIPT 10us
set-c012-100ns-1280.sh
./$SCRIPT 100ns

#bru-en-perf.sh 0
