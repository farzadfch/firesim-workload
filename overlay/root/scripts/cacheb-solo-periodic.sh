#!/bin/bash
#set -o xtrace

export RES=/root/results/cacheb-solo-periodic.txt

taskset 3 hpm_counters -f
./cacheb-periodic.sh
taskset 3 hpm_counters -f
