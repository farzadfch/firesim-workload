#!/bin/bash

set -euo xtrace

SCRIPT=$1
SCRIPT_SOLO=$2

# 1us perf sampling
bru-set-perf-period.sh 21299
bru-en-perf.sh 1


set-c012-100ns-1280.sh
./$SCRIPT 100ns

sleep 0.1

set-c012-10us-1280.sh
./$SCRIPT 10us

sleep 0.1

set-c012-1ms-1280.sh
./$SCRIPT 1ms

sleep 0.1

disable.sh 
./$SCRIPT_SOLO

sleep 0.1

./$SCRIPT no-reg


bru-en-perf.sh 0
