#!/bin/bash
set -o xtrace

export RES=/root/results/bw-disparity-loop-${1}.txt

taskset 3 hpm_counters -f
./disparity-loop.sh 1 &
./disparity-loop.sh 2 &
./disparity-loop.sh 4 &
usleep 100000
./bw-loop.sh
taskset 3 hpm_counters -f

kill $(jobs -p)
