#!/bin/bash
#set -o xtrace

export RES=/root/results/ifft-solo-periodic.txt

taskset 3 hpm_counters -f
./ifft-periodic.sh
taskset 3 hpm_counters -f
