#!/bin/bash
#set -o xtrace

export RES=/root/results/solo.txt

echo -n hpmcs,; taskset 8 hpm_counters -f
./bw-loop.sh
echo -n hpmcs,; taskset 8 hpm_counters -f
