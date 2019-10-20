#!/bin/bash
#set -o xtrace

export RES=/root/results/bw-solo-loop-${1}.txt

. /root/env.sh
taskset 3 hpm_counters -f
./bw-loop.sh
taskset 3 hpm_counters -f
